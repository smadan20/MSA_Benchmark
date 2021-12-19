#!/bin/bash

declare -a a=("1000L3") #"1000S1" "1000S3")

for dir in ${a[@]}
do
	cd $dir
	#rm -rf experiment2_trees
	#mkdir experiment2_trees
	swarm -f ../fasttree_exp2.swarm -t auto --module FastTree --partition=ccr
	cd ../
done
