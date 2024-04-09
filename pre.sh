#!/bin/bash

# Download Shakespeare archive with wget
wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar

# Extract the Shakespeare archive
tar -xf shakespeare.tar

rm -rf output

mkdir output

# Concatenate all play files into one large file
cat */*/* > all_plays.txt

# Split the large file into 5 smaller files
split -n 5 all_plays.txt output/output_version

ls -1 output/output_version* > inputFileList
