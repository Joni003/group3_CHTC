#!/bin/bash

export LC_ALL=C

cd preoutput

sort -m *.out -o merged_sorted

echo "file merged and sorted"
