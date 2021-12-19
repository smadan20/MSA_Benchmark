#!/bin/bash

declare -a a=("1000L1" "1000L3" "1000S1" "1000S3" "500L1" "500S1" "500S3" "500L3")
#declare -a a=("500L1" "500L3")
declare -a b=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")

for dir in ${a[@]}; do
	cd "$dir"/
	mkdir results
	for sub in ${b[@]}; do
		cd "$sub"/
	        java -jar ../../FastSP.jar -r rose.aln.true.fasta -e "$sub".mafft.aln.fasta > ../results/"$sub".mafft.error.txt
	        java -jar ../../FastSP.jar -r rose.aln.true.fasta -e "$sub".clustalo.aln.fasta > ../results/"$sub".clustalo.error.txt
	        java -jar ../../FastSP.jar -r rose.aln.true.fasta -e "$sub".in.fasta_aln > ../results/"$sub".RTL.error.txt
	        java -jar ../../FastSP.jar -r rose.aln.true.fasta -e "$sub".magus.aln.fasta > ../results/"$sub".magus.error.txt
	    cd ..
    done
    cd ..
done