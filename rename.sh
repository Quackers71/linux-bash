#!/bin/bash
# Example template test 01 (2025-12-28) (Copy).txt
# Example template test 02 (2025-11-02) (Copy).txt

for file in *"("*").txt"; 
do
    [ -e "$file" ] || continue
    new_name="${file%  (*).txt}.txt"
    mv -v "$file" "$new_name"
done

# Result
# Example template test 01.txt