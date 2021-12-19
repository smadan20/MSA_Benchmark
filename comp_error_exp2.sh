#!/bin/bash

declare -a a=("1000L1") #"1000L3" "1000S1" "1000S3")
#declare -a a=("500L1" "500L3")
declare -a b=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")

for dir in ${a[@]}; do
	cd "$dir"/
	mkdir exp2_results
	for sub in ${b[@]}; do
		#cd "$sub"/
	        java -jar ../FastSP.jar -r "$sub"/rose.aln.true.fasta -e experiment2/"$sub".RTL.50.fasta > exp2_results/"$sub".RTL.50.error.txt
	        java -jar ../FastSP.jar -r "$sub"/rose.aln.true.fasta -e experiment2/"$sub".RTL.100.fasta > exp2_results/"$sub".RTL.100.error.txt
	        java -jar ../FastSP.jar -r "$sub"/rose.aln.true.fasta -e experiment2/"$sub".RTL.150.fasta > exp2_results/"$sub".RTL.150.error.txt
	        java -jar ../FastSP.jar -r "$sub"/rose.aln.true.fasta -e experiment2/"$sub".RTL.200.fasta > exp2_results/"$sub".RTL.200.error.txt
	        java -jar ../FastSP.jar -r "$sub"/rose.aln.true.fasta -e experiment2/"$sub".magus.100.fasta > exp2_results/"$sub".magus.100.error.txt
	        java -jar ../FastSP.jar -r "$sub"/rose.aln.true.fasta -e experiment2/"$sub".magus.150.fasta > exp2_results/"$sub".magus.150.error.txt
	        java -jar ../FastSP.jar -r "$sub"/rose.aln.true.fasta -e experiment2/"$sub".magus.200.fasta > exp2_results/"$sub".magus.200.error.txt
	    #cd ..
    done
    cd ..
done