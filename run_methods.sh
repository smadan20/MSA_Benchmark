#!/bin/bash

#declare -a a=("1000S1" "1000S3" "500S1" "500S3" "500L1" "500L3")
declare -a a=("1000L1" "1000L3" "1000S1" "1000S3")
#declare -a a=("1000S3")

for dir in ${a[@]}
do
	cd $dir
	#mkdir experiment2
	#mkdir magus_experiment2

	#sh ../mafft_swarm.sh
	#sh ../clustalo_swarm.sh
	#sh ../magus_swarm.sh
	#sh ../tcoffee_swarm.sh
	#sh ../tcoffee_mafftlinsi_swarm.sh

	#sh ../tcoffee.50.mafftlinsi.swarm.sh
	#sh ../tcoffee.100.mafftlinsi.swarm.sh
	#sh ../tcoffee.150.mafftlinsi.swarm.sh
	#sh ../tcoffee.200.mafftlinsi.swarm.sh

	sh ../magus.100.swarm.sh
	sh ../magus.150.swarm.sh
	sh ../magus.200.swarm.sh
	cd ../
done
