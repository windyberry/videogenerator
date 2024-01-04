#!/bin/bash
directory="./ADDtest"    # Specify the directory containing your files
file_type="jpg"      # Specify the file type (e.g., txt, jpg, etc.)

for file in "$directory"/*.$file_type; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        mv "$file" "$directory/$(openssl rand -hex 8).jpg"
    fi
done

file_type="JPG"      
for file in "$directory"/*.$file_type; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        mv "$file" "$directory/$(openssl rand -hex 8).jpg"
    fi
done