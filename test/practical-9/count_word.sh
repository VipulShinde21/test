#!/bin/bash
echo "Enter the filename:"
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "File not found!"
    exit 1
fi

# Read file content
file_content=$(<"$filename")

# Process text: convert to lowercase, replace punctuation with newlines, count occurrences, and sort
echo "$file_content" | tr -c 'A-Za-z' '\n' | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr

