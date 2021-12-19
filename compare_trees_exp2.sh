#!/bin/bash

declare -a a=("1000L1" "1000L3" "1000S1" "1000S3")
declare -a b=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")

for dir in ${a[@]}; do
	cd "$dir"/
	#mkdir exp2_tree_errors
	for sub in ${b[@]}; do
	#	python ../compare_two_trees.py -t1 experiment2_trees/$sub.RTL.50.tree -t2 $sub/rose.tt > exp2_tree_errors/$sub.RTL.50.error.txt
	#	python ../compare_two_trees.py -t1 experiment2_trees/$sub.RTL.100.tree -t2 $sub/rose.tt > exp2_tree_errors/$sub.RTL.100.error.txt
	#	python ../compare_two_trees.py -t1 experiment2_trees/$sub.RTL.150.tree -t2 $sub/rose.tt > exp2_tree_errors/$sub.RTL.150.error.txt
	#	python ../compare_two_trees.py -t1 experiment2_trees/$sub.RTL.200.tree -t2 $sub/rose.tt > exp2_tree_errors/$sub.RTL.200.error.txt
		python ../compare_two_trees.py -t1 experiment2_trees/$sub.magus.150.tree -t2 $sub/rose.tt > exp2_tree_errors/$sub.magus.150.error.txt
		python ../compare_two_trees.py -t1 experiment2_trees/$sub.magus.100.tree -t2 $sub/rose.tt > exp2_tree_errors/$sub.magus.100.error.txt
		python ../compare_two_trees.py -t1 experiment2_trees/$sub.magus.200.tree -t2 $sub/rose.tt > exp2_tree_errors/$sub.magus.200.error.txt
	done
	cd ..
done
