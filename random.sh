#!/bin/bash
directory="./test"    # Specify the directory containing your files
file_type="jpg"      # Specify the file type (e.g., txt, jpg, etc.)

for file in "$directory"/*.$file_type; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        #mv "$file" "$directory/$(openssl rand -hex 8).jpg"
        random_number=$(jot -r 1 10000000 99999999)
        mv "$file" "$directory/$random_number.jpg"
    fi
done

file_type="JPG"      
for file in "$directory"/*.$file_type; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        # mv "$file" "$directory/$(openssl rand -hex 8).jpg"
        random_number=$(jot -r 1 10000000 99999999)
        mv "$file" "$directory/$random_number.jpg"
    fi
done