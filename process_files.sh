#!/bin/bash

# Function to handle unzipping
process_zip() {
    local file="$1"
    echo "Processing file: $file"
    local foldername="${file%.zip}"
    if unzip "$file" -d "$foldername"; then
        echo "Successfully unzipped: $file"
        rm "$file"
        echo "Removed .zip file: $file"
    else
        echo "Error unzipping: $file"
    fi
}

# Configuration
FILE_PATTERN="*Sample*"                    # Change this to your desired file search pattern
OUTPUT_PARENT_DIR="OutputDirectory"        # Change this to your desired parent directory name
DEST_SUB_DIR="$OUTPUT_PARENT_DIR/SubDir"   # Change this to your desired sub-directory name within the parent directory

# Create directories
mkdir -p "$DEST_SUB_DIR"

# Step 1: Copying files
echo "Identifying and copying files with pattern: $FILE_PATTERN"
find . -type f -name "$FILE_PATTERN" | parallel --bar --eta -j $(nproc) cp {} "$DEST_SUB_DIR/"

# Step 2: Unzipping files
echo "Unzipping files within $DEST_SUB_DIR"
export -f process_zip
find "$DEST_SUB_DIR" -type f -name "*.d.zip" | parallel --bar --eta -j $(nproc) process_zip {}

echo "All tasks completed!"
