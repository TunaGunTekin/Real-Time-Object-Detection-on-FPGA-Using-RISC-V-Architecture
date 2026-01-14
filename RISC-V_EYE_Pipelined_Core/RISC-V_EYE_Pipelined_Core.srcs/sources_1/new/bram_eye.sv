`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Project Name: RISC-V EYE
// Description: Real-Time Object Detection on FPGA Using RISC-V Architecture Graduation Project for Hacettepe University Electrical and Electronics Engineering. 
// File Name: bram_eye.sv
// Module: Block RAM Module for Instruction and Data Memory
// Designer: Tuna Gün Tekin
//////////////////////////////////////////////////////////////////////////////////


(* dont_touch = "true" *)
module bram_eye #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 10
)(
    input logic clk,

    // --- PORT A: Instruction Fetch (Read Only) ---
    input logic [ADDR_WIDTH-1:0]  addr_a_in,
    output logic [DATA_WIDTH-1:0] read_data_a_out,

    // --- PORT B: Data Memory (Read / Write) ---
    input logic                   we_b_in,         // Write Enable
    input logic [ADDR_WIDTH-1:0]  addr_b_in,
    input logic [DATA_WIDTH-1:0]  write_data_b_in,
    output logic [DATA_WIDTH-1:0] read_data_b_out
);

    // Bellek Dizisi

    (* ram_style = "block" *) 
    logic [DATA_WIDTH-1:0] ram [0:(2**ADDR_WIDTH)-1];


    initial begin
// --- 1. I-TYPE (Register Hazırlığı) ---
        // ADDI x1, x0, 10    -> x1 = 10 (0xA)
        ram[0] = 32'h00A00093;
        // ADDI x2, x0, 3     -> x2 = 3  (0x3)
        ram[1] = 32'h00300113;

        // --- 2. R-TYPE (Aritmetik & Mantık) ---
        // ADD x3, x1, x2     -> x3 = 10 + 3 = 13 (0xD)
        ram[2] = 32'h002081B3;
        // SUB x4, x1, x2     -> x4 = 10 - 3 = 7  (0x7)
        ram[3] = 32'h40208233;
        // OR  x5, x1, x2     -> x5 = 10 | 3 = 11 (0xB)  (1010 | 0011 = 1011)
        ram[4] = 32'h0020E2B3;
        // AND x6, x1, x2     -> x6 = 10 & 3 = 2  (0x2)  (1010 & 0011 = 0010)
        ram[5] = 32'h0020F333;

        // --- 3. LUI (Load Upper Immediate) ---
        // LUI x7, 0x12345    -> x7 = 0x12345000
        ram[6] = 32'h123453B7;

        // --- 4. STORE & LOAD (Memory Test) ---
        // Base Adres Hazırlığı: ADDI x8, x0, 256 (0x100)
        ram[7] = 32'h10000413;
        
        ram[8] = 32'h00000013; // NOP (ADDI x0, x0, 0)
        ram[9] = 32'h00000013; // NOP
        
        // SW x7, 0(x8)       -> Memory[64] = 0x12345000 
        ram[10] = 32'h00742023;
        
        // Register Temizliği: ADDI x9, x0, 0
        ram[11] = 32'h00000493;
        
        // LW x9, 0(x8)       -> x9 = Memory[64] (0x12345000 geri okunmalı)
        // Burada Load-Use veya Memory gecikmesi görülebilir.
        ram[12] = 32'h00042483;
        // --- 5. BRANCH (Dallanma) TESTLERİ ---
        
        // TEST A: Branch Not Taken (Şart Sağlanmazsa)
        // BEQ x1, x2, +8     -> 10 == 3 ? Hayır. PC bir sonrakine geçmeli.
        ram[13] = 32'h00208463;
        
        // ADDI x10, x0, 1    -> x10 = 1 (Bu satır ÇALIŞMALI)
        ram[14] = 32'h00100513;

        // TEST B: Branch Taken (Şart Sağlanırsa)
        // ADDI x11, x0, 10   -> x11 = 10
        ram[15] = 32'h00A00593;
        
        // BEQ x1, x11, +8    -> 10 == 10 ? Evet. PC+8'e (2 satır atla) git.
        ram[16] = 32'h00B08463; 
        
        // ADDI x12, x0, 99   -> x12 = 99 (Bu satır ATLANMALI / FLUSH EDİLMELİ)
        ram[17] = 32'h06300613;

        // --- 6. JUMP (Zıplama) TESTLERİ ---
        
        // JAL x13, +8        -> x13 = PC+4, PC = PC+8 (1 satır atla)
        // Hedef: x13'e dönüş adresi yazılmalı, bir sonraki komut atlanmalı.
        ram[18] = 32'h008006EF;

        // ADDI x14, x0, 88   -> x14 = 88 (Bu satır ATLANMALI / FLUSH EDİLMELİ)
        ram[19] = 32'h05800713;

        // SON: Sonsuz Döngü (BEQ x0, x0, 0)
        // Buraya gelindiğinde işlemci aynı satırda takılmalı.
        ram[20] = 32'h00000063;
        
    end

    // Port A (Instruction)
    always_ff @(posedge clk) begin
        read_data_a_out <= ram[addr_a_in];
    end

    // Port B (Data)
    always_ff @(posedge clk) begin
        if (we_b_in) begin
            ram[addr_b_in] <= write_data_b_in;
        end
        read_data_b_out <= ram[addr_b_in];
    end

endmodule