import os
import shutil

def discard_large_apple_counts():
    # Define paths
    # Note: Using raw strings for Windows paths
    base_dir = r'd:\DESK\D_Desk\PYTHON\PycharmProjects\Obj_detect\Model_v1'
    bounding_box_dir = os.path.join(base_dir, 'bounding_boxes_apples')
    images_dir = os.path.join(base_dir, 'JPEGImages_apples')
    
    # Define destination for discarded files
    discard_dir = os.path.join(base_dir, 'discarded_dataset')
    discard_labels_dir = os.path.join(discard_dir, 'bounding_boxes_apples')
    discard_images_dir = os.path.join(discard_dir, 'JPEGImages_apples')
    
    # Create discard directories if they don't exist
    os.makedirs(discard_labels_dir, exist_ok=True)
    os.makedirs(discard_images_dir, exist_ok=True)
    
    print(f"Scanning directory: {bounding_box_dir}")
    
    if not os.path.exists(bounding_box_dir):
        print(f"Error: Directory not found: {bounding_box_dir}")
        return

    # Statistics
    total_scanned = 0
    discarded_count = 0
    kept_count = 0
    
    # Iterate through label files
    for filename in os.listdir(bounding_box_dir):
        if filename.endswith(".txt"):
            file_path = os.path.join(bounding_box_dir, filename)
            
            try:
                # Read the file to count apples (lines)
                with open(file_path, 'r') as f:
                    # Filter out empty lines to get accurate apple count
                    lines = [line for line in f if line.strip()]
                    apple_count = len(lines)
                
                total_scanned += 1
                
                # Check condition: Discard if 6 or more apples
                if apple_count >= 6:
                    discarded_count += 1
                    
                    # 1. Move the label file
                    shutil.move(file_path, os.path.join(discard_labels_dir, filename))
                    
                    # 2. Find and move the corresponding image file
                    # Only the extension changes; filename stem is usually the same
                    file_stem = os.path.splitext(filename)[0]
                    
                    # Possible image extensions to look for
                    image_extensions = ['.jpg', '.jpeg', '.png']
                    image_moved = False
                    
                    for ext in image_extensions:
                        img_name = file_stem + ext
                        img_path = os.path.join(images_dir, img_name)
                        
                        if os.path.exists(img_path):
                            shutil.move(img_path, os.path.join(discard_images_dir, img_name))
                            image_moved = True
                            break
                    
                    if not image_moved:
                        print(f"Warning: Corresponding image for {filename} not found.")
                else:
                    kept_count += 1
                    
            except Exception as e:
                print(f"Error processing {filename}: {e}")

    # Final Report
    print("-" * 30)
    print("Processing Complete")
    print("-" * 30)
    print(f"Total files scanned: {total_scanned}")
    print(f"Files kept (< 6 apples): {kept_count}")
    print(f"Files discarded (>= 6 apples): {discarded_count}")
    print("-" * 30)
    print(f"Discarded files moved to: {discard_dir}")

if __name__ == "__main__":
    # Safety Check: Ask user before running if executed directly
    print("This script will move files with 6 or more apples to a 'discarded_dataset' folder.")
    print("To execute, run the function 'discard_large_apple_counts()'")
    discard_large_apple_counts()
