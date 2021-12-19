#!/bin/bash

declare -a a=("1000L1" "1000L3" "1000S1" "1000S3" "500L1" "500S1" "500S3" "500L3")
#declare -a a=("500L1" "500L3")
declare -a b=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")

for dir in ${a[@]}; do
	cd "$dir"/
	mkdir results
	for sub in ${b[@]}; do
		cd "$sub"/
			t_coffee -reg -seq $sub.in.fasta -method mafftlinsi_msa -thread 0 -outfile $sub.RTL.mafft.aln.fasta
	    cd ..
    done
    cd ..
done