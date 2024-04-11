#!/bin/bash

export LC_ALL=C

cd output

sort -m *.out -o merged_sorted

echo "file merged and sorted"

uniq -c merged_sorted countsOfWords
