#!/bin/bash

declare -a arr=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")

#cd "$1"
rm fasttree_exp2.swarm
touch fasttree_exp2.swarm

size=$1

for d in ${arr[@]}
do
	#echo "cd experiment2; FastTree -nt $d.RTL.50.fasta > ../experiment2_trees/$d.RTL.50.tree" >> fasttree_exp2.swarm
	#echo "cd experiment2; FastTree -nt $d.RTL.100.fasta > ../experiment2_trees/$d.RTL.100.tree" >> fasttree_exp2.swarm
	#echo "cd experiment2; FastTree -nt $d.RTL.150.fasta > ../experiment2_trees/$d.RTL.150.tree" >> fasttree_exp2.swarm
	#echo "cd experiment2; FastTree -nt $d.RTL.200.fasta > ../experiment2_trees/$d.RTL.200.tree" >> fasttree_exp2.swarm
	echo "cd experiment2; FastTree -nt $d.magus.100.fasta > ../experiment2_trees/$d.magus.100.tree" >> fasttree_exp2.swarm
	echo "cd experiment2; FastTree -nt $d.magus.150.fasta > ../experiment2_trees/$d.magus.150.tree" >> fasttree_exp2.swarm
	echo "cd experiment2; FastTree -nt $d.magus.200.fasta > ../experiment2_trees/$d.magus.200.tree" >> fasttree_exp2.swarm
done
