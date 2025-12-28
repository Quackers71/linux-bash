#!/bin/bash

# remove specific stuff from multiple files i.e. everything within and including
# the brackets () including any whitespace
# "Example template test 01   (2025-12-28) (Copy).txt"
# "Example template test 02   (2025-11-02) (Copy).txt"

# ./rename-dir.sh /{$TARGET_DIR}

TARGET_DIR="${1:-.}"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: '$TARGET_DIR' is not a valid directory."
    exit 1
fi

for file in "$TARGET_DIR"/*"("*").txt"; 
do
    [ -e "$file" ] || continue
    new_name="${file%  (*).txt}.txt"
    mv -v "$file" "$new_name"
done

# Result - "Example template test 01.txt"
# the "(" could be substituted for any other character if required!