#!/bin/bash

declare -a a=("500S1" "500L1" "500S3" "500L3" "1000L1" "1000L3" "1000S1" "1000S3")

for dir in ${a[@]}
do
	cd $dir
	awk '{ if ($0 !~ /^>/) { gsub(/-/, "", $0); } print $0; }' "$dir"rose.aln.true.fasta > "$dir"rose.unaln.fasta
	sed '/^$/d' "$dir"rose.unaln.fasta > "$dir"${dir///}.in.fasta	
	cd ../
done
