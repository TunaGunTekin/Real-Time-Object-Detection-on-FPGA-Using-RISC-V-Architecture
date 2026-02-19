import os
import shutil
import random

def split_dataset(train_ratio=0.8):
    # Set random seed for reproducibility
    random.seed(42)

    # Base paths
    base_dir = r'd:\DESK\D_Desk\PYTHON\PycharmProjects\Obj_detect\Model_v1'
    
    # Source directories (filtered apple dataset)
    source_labels_dir = os.path.join(base_dir, 'bounding_boxes_apples')
    source_images_dir = os.path.join(base_dir, 'JPEGImages_apples')
    
    # Destination directories
    dest_base = os.path.join(base_dir, 'data_new')
    dest_train_images = os.path.join(dest_base, 'train', 'images')
    dest_train_labels = os.path.join(dest_base, 'train', 'labels')
    dest_valid_images = os.path.join(dest_base, 'valid', 'images')
    dest_valid_labels = os.path.join(dest_base, 'valid', 'labels')
    
    # Ensure destination directories exist
    for d in [dest_train_images, dest_train_labels, dest_valid_images, dest_valid_labels]:
        os.makedirs(d, exist_ok=True)
        
    print(f"Scanning source labels from: {source_labels_dir}")
    
    # detailed list of pairs (label_path, image_path)
    data_pairs = []
    
    # Scan for valid pairs
    missing_images = 0
    if os.path.exists(source_labels_dir):
        for filename in os.listdir(source_labels_dir):
            if filename.endswith(".txt"):
                label_path = os.path.join(source_labels_dir, filename)
                
                # Find corresponding image
                file_stem = os.path.splitext(filename)[0]
                image_found = False
                image_path = ""
                
                # Check extensions
                for ext in ['.jpg', '.jpeg', '.png', '.JPG']:
                    temp_path = os.path.join(source_images_dir, file_stem + ext)
                    if os.path.exists(temp_path):
                        image_path = temp_path
                        image_found = True
                        break
                
                if image_found:
                    data_pairs.append({'label': label_path, 'image': image_path, 'filename': filename, 'img_filename': os.path.basename(image_path)})
                else:
                    missing_images += 1
    else:
        print(f"Error: Source directory {source_labels_dir} not found.")
        return

    total_items = len(data_pairs)
    print(f"Found {total_items} valid image-label pairs.")
    if missing_images > 0:
        print(f"Warning: {missing_images} labels had no corresponding images.")

    # Shuffle and split
    random.shuffle(data_pairs)
    
    train_count = int(total_items * train_ratio)
    train_set = data_pairs[:train_count]
    valid_set = data_pairs[train_count:]
    
    print("-" * 30)
    print(f"Splitting data: {len(train_set)} Train, {len(valid_set)} Validation")
    print("-" * 30)
    
    # Function to copy files
    def copy_files(dataset, dest_img_dir, dest_lbl_dir, set_name):
        print(f"Copying {len(dataset)} items to {set_name}...")
        count = 0
        for item in dataset:
            try:
                # Copy image
                shutil.copy2(item['image'], os.path.join(dest_img_dir, item['img_filename']))
                # Copy label
                shutil.copy2(item['label'], os.path.join(dest_lbl_dir, item['filename']))
                count += 1
            except Exception as e:
                print(f"Error copying {item['filename']}: {e}")
        print(f"Finished copying {count} items to {set_name}.")

    # execution
    copy_files(train_set, dest_train_images, dest_train_labels, "TRAIN")
    copy_files(valid_set, dest_valid_images, dest_valid_labels, "VALID")
    
    print("-" * 30)
    print("Dataset split complete!")
    print(f"Train images in: {dest_train_images}")
    print(f"Valid images in: {dest_valid_images}")

if __name__ == "__main__":
    split_dataset()
