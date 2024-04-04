#!/bin/bash

#Download shakespeare with wget

wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespear.tar

#Tar
tar -xf shakespear.tar

#Concatenate all files
cat */* > all_plays.txt

#Split
split -n 5 all_plays.txt output_version
