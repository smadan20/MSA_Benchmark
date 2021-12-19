#!/bin/bash

declare -a a=("1000L1" "1000L3" "1000S1" "1000S3" "500L1" "500S1" "500S3" "500L3")
declare -a b=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")

for dir in ${a[@]}; do
	cd "$dir"/
	mkdir tree_errors
	for sub in ${b[@]}; do
		python ../compare_two_trees.py -t1 trees/$sub.clustalo.tree -t2 $sub/rose.tt > tree_errors/$sub.clustalo.error.txt
		python ../compare_two_trees.py -t1 trees/$sub.mafft.tree -t2 $sub/rose.tt > tree_errors/$sub.mafft.error.txt
		python ../compare_two_trees.py -t1 trees/$sub.RTL.tree -t2 $sub/rose.tt > tree_errors/$sub.RTL.error.txt
		python ../compare_two_trees.py -t1 trees/$sub.magus.tree -t2 $sub/rose.tt > tree_errors/$sub.magus.error.txt
	done
	cd ..
done
