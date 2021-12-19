#!/bin/bash

declare -a arr=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")

for dir in ${arr[@]}; do
    mv "$dir".RTL.mafft.aln.fasta "$dir"/
done