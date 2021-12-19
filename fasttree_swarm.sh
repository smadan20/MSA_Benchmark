#!/bin/bash

declare -a a=("1000L1" "1000L3" "1000S1" "1000S3" "500S1" "500S3" "500L1" "500L3")

for dir in ${a[@]}
do
	cd $dir
	mkdir trees
	swarm -f ../fasttree.swarm -t 16 --module FastTree
	cd ../
done
