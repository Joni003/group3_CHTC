#!/bin/bash

# Check if an input file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 input_file"
    exit 1
fi

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "File not found: $input_file"
    exit 1
fi

# Convert text to lowercase
tr '[:upper:]' '[:lower:]' < "$input_file" |
# Remove punctuation
sed -e 's/[^[:alnum:]]/ /g' |
# Replace spaces and tabs with newlines
sed 's/[[:space:]]/\n/g' |
# Remove blank lines
grep -v '^$' |
# Sort the words
sort
