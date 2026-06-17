import os
from nbtlib import load, String

# --- Configuration ---
OLD_WORD = ""
NEW_WORD = ""

# Automatically detect the directory where the script is executed
START_FOLDER = os.getcwd()


def replace_text_in_tags(tag, old, new):
    """
    Recursive function that traverses through all NBT tags
    and replaces the target text within String tags.
    """
    # If the tag is a String tag
    if isinstance(tag, String):
        if old in tag:
            return String(tag.replace(old, new))
        return tag

    # If the tag is a Compound tag (dict-like structure) or the File object itself
    elif hasattr(tag, 'keys'):
        for key in list(tag.keys()):
            tag[key] = replace_text_in_tags(tag[key], old, new)
            
    # If the tag is a List tag
    elif isinstance(tag, list):
        for i in range(len(tag)):
            tag[i] = replace_text_in_tags(tag[i], old, new)
            
    return tag


def process_nbt_files():
    print(f"Starting scan in directory: {START_FOLDER}")
    print(f"Searching to replace '{OLD_WORD}' with '{NEW_WORD}'...\n")
    
    count = 0
    
    # os.walk scans the current directory and all its subdirectories recursively
    for root_dir, dirs, files in os.walk(START_FOLDER):
        for filename in files:
            if filename.endswith(".nbt"):
                file_path = os.path.join(root_dir, filename)
                
                # Get relative path for cleaner console output
                relative_path = os.path.relpath(file_path, START_FOLDER)
                
                try:
                    # Load the NBT file
                    nbt_file = load(file_path)
                    
                    # Fix for files where the root is either an attribute or the file itself
                    if hasattr(nbt_file, 'root'):
                        nbt_file.root = replace_text_in_tags(nbt_file.root, OLD_WORD, NEW_WORD)
                    else:
                        replace_text_in_tags(nbt_file, OLD_WORD, NEW_WORD)
                    
                    # Save the modifications back to the file
                    nbt_file.save()
                    print(f"Successfully updated: {relative_path}")
                    count += 1
                except Exception as e:
                    print(f"Error processing file {relative_path}: {e}")

    print(f"\nDone! A total of {count} NBT files were updated.")


if __name__ == "__main__":
    # Friendly reminder to backup files before execution
    confirm = input("Have you backed up your files before running this script? (y/n): ")
    if confirm.lower() == 'y':
        process_nbt_files()
    else:
        print("Operation cancelled. Please backup your files before applying bulk changes.")