# prepare_darknet.ps1
# Converts a YOLOv8-style dataset (train/ + valid/ with images/ + labels/) 
# into YOLOv4-Tiny Darknet format inside data/obj/.

$ErrorActionPreference = 'Stop'
$base    = Split-Path -Parent $PSScriptRoot  # scripts/ -> model_v3 root
$dataObj = Join-Path $base 'data\obj'

# ── 1. Create data/obj/ ──────────────────────────────────────────────────────
New-Item -ItemType Directory -Force -Path $dataObj | Out-Null
Write-Host '[1/6] Created data/obj/'

# ── 2. Move train images + labels ────────────────────────────────────────────
$trainImg = Join-Path $base 'data\train\images'
$trainLbl = Join-Path $base 'data\train\labels'
if (Test-Path $trainImg) { Get-ChildItem $trainImg -File | Move-Item -Destination $dataObj -Force }
if (Test-Path $trainLbl) { Get-ChildItem $trainLbl -File | Move-Item -Destination $dataObj -Force }
Write-Host '[2/6] Moved train images & labels -> data/obj/'

# ── 3. Move valid images + labels ────────────────────────────────────────────
$validImg = Join-Path $base 'data\valid\images'
$validLbl = Join-Path $base 'data\valid\labels'
if (Test-Path $validImg) { Get-ChildItem $validImg -File | Move-Item -Destination $dataObj -Force }
if (Test-Path $validLbl) { Get-ChildItem $validLbl -File | Move-Item -Destination $dataObj -Force }
Write-Host '[3/6] Moved valid images & labels -> data/obj/'

# ── 4. Generate train.txt and test.txt (80/20 split of flat pool) ────────────
$allJpgs    = @(Get-ChildItem $dataObj -Filter '*.jpg' | Sort-Object Name)
$totalCount = $allJpgs.Count
$trainCount = [Math]::Round($totalCount * 0.8)

$trainLines = $allJpgs[0..($trainCount - 1)] | ForEach-Object { 'data/obj/' + $_.Name }
$testLines  = $allJpgs[$trainCount..($totalCount - 1)] | ForEach-Object { 'data/obj/' + $_.Name }

Set-Content -Path (Join-Path $base 'train.txt') -Value $trainLines -Encoding UTF8
Set-Content -Path (Join-Path $base 'test.txt')  -Value $testLines  -Encoding UTF8
Write-Host "[4/6] Generated train.txt ($trainCount images) and test.txt ($($totalCount - $trainCount) images)"

# ── 5. Create obj.names and obj.data ─────────────────────────────────────────
Set-Content -Path (Join-Path $base 'obj.names') -Value 'apple' -Encoding UTF8 -NoNewline

$objDataContent = "classes = 1`ntrain  = data/train.txt`nvalid  = data/test.txt`nnames  = data/obj.names`nbackup = /content/backup"
Set-Content -Path (Join-Path $base 'obj.data') -Value $objDataContent -Encoding UTF8
Write-Host '[5/6] Created obj.names and obj.data'

# ── 6. Download & patch yolov4-tiny-custom.cfg ───────────────────────────────
$cfgUrl  = 'https://raw.githubusercontent.com/AlexeyAB/darknet/master/cfg/yolov4-tiny-custom.cfg'
$cfgPath = Join-Path $base 'yolov4-tiny-custom.cfg'
Invoke-WebRequest -Uri $cfgUrl -OutFile $cfgPath -UseBasicParsing
Write-Host '[6/6] Downloaded yolov4-tiny-custom.cfg'

$cfg = Get-Content $cfgPath -Raw

# Set resolution
$cfg = $cfg -replace '(?m)^width=\d+',  'width=416'
$cfg = $cfg -replace '(?m)^height=\d+', 'height=416'

# Set classes=1 in every [yolo] block
$cfg = $cfg -replace '(?m)^classes=\d+', 'classes=1'

# Set filters=18 in the [convolutional] immediately before each [yolo] layer
# Matches "filters=<N>" that is followed (possibly with whitespace lines) by [yolo]
$cfg = [regex]::Replace($cfg, '(filters=\d+)(\r?\n\[yolo\])', 'filters=18$2', 'Multiline')

Set-Content -Path $cfgPath -Value $cfg -Encoding UTF8 -NoNewline
Write-Host '    Patched: width=416, height=416, classes=1, filters=18'

# ── 7. Verify: every .jpg must have a matching .txt ──────────────────────────
Write-Host ''
Write-Host '=== Verification ==='
$jpgs    = Get-ChildItem $dataObj -Filter '*.jpg'
$missing = @()
foreach ($jpg in $jpgs) {
    $txtPath = Join-Path $dataObj ($jpg.BaseName + '.txt')
    if (-not (Test-Path $txtPath)) { $missing += $jpg.Name }
}

Write-Host "Total .jpg files : $($jpgs.Count)"
Write-Host "Missing .txt     : $($missing.Count)"
if ($missing.Count -gt 0) {
    Write-Host 'FILES MISSING LABELS:'
    $missing | ForEach-Object { Write-Host "  - $_" }
} else {
    Write-Host 'All images have matching label files. Verification PASSED.'
}
