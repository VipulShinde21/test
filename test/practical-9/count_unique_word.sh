#!/bin/bash
echo "enter the filename"
read filename

if [ ! -f "$filename" ]; then
	echo "File not found"
	exit 1
fi

file_content=$(<"$filename")

echo "$file_content" | tr -s '[:space][:punct]' '\n' | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr
