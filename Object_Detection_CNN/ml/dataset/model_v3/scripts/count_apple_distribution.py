import os

def count_apples():
    # Define the directory path
    # Using raw string for Windows path or forward slashes
    bounding_box_dir = r'd:\DESK\D_Desk\PYTHON\PycharmProjects\Obj_detect\Model_v1\bounding_boxes_apples'
    
    # Initialize counters for the specific requested categories
    # We will also track a full distribution to be helpful
    counts = {
        '4': 0,
        '5': 0,
        '6': 0,
        '8_plus': 0
    }
    
    total_images = 0
    images_with_7 = 0 # Just in case
    
    print(f"Scanning directory: {bounding_box_dir}")
    
    if not os.path.exists(bounding_box_dir):
        print(f"Error: Directory not found: {bounding_box_dir}")
        return

    # Iterate through all files in the directory
    for filename in os.listdir(bounding_box_dir):
        if filename.endswith(".txt"):
            filepath = os.path.join(bounding_box_dir, filename)
            try:
                with open(filepath, 'r') as f:
                    # Count non-empty lines
                    # Some files might have empty newlines at the end, so we filter them
                    lines = [line for line in f if line.strip()]
                    apple_count = len(lines)
                    
                    total_images += 1
                    
                    if apple_count == 4:
                        counts['4'] += 1
                    elif apple_count == 5:
                        counts['5'] += 1
                    elif apple_count == 6:
                        counts['6'] += 1
                    elif apple_count == 7:
                        images_with_7 += 1
                    elif apple_count >= 8:
                        counts['8_plus'] += 1
                        
            except Exception as e:
                print(f"Error reading {filename}: {e}")

    # Print results
    print("-" * 30)
    print(f"Total images scanned: {total_images}")
    print("-" * 30)
    print(f"Images with 4 apples:   {counts['4']}")
    print(f"Images with 5 apples:   {counts['5']}")
    print(f"Images with 6 apples:   {counts['6']}")
    print(f"Images with 8+ apples:  {counts['8_plus']}")
    print("-" * 30)
    print(f"(For reference, images with 7 apples: {images_with_7})")

if __name__ == "__main__":
    count_apples()
