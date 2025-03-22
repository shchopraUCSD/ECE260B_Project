#!/bin/bash

# Define paths and extension
single_core_path="single_core"
dual_core_path="dual_core"
extension=".sdc"

# Check if directories exist
if [ ! -d "$single_core_path" ]; then
    echo "Error: Directory '$single_core_path' does not exist."
    exit 1
fi

if [ ! -d "$dual_core_path" ]; then
    echo "Error: Directory '$dual_core_path' does not exist."
    exit 1
fi

# Find files with the specified extension in both directories
while IFS= read -r -d '' file; do
    relative_path=${file#$single_core_path/}
    dual_core_file="$dual_core_path/$relative_path"
    
    if [ -f "$dual_core_file" ]; then
        echo "Comparing $relative_path..."
        kompare "$file" "$dual_core_file"
    else
        echo "No matching file for $relative_path in dual_core."
    fi
done < <(find "$single_core_path" -type f -name "*$extension" -print0)
