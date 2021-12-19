#!/bin/bash

declare -a arr=("R0" "R1" "R2" "R3" "R4" "R5" "R6" "R7" "R8" "R9")
#declare -a arr=("R9")

#cd "$1"
#touch fasttree.swarm

size=$1
#fname="tcoffee.$size.mafftlinsi.swarm"
fname_magus="magus.$size.swarm"
#fname_tcoffee="tcoffee.$size.mafftlinsi.swarm"
rm $fname_magus
#rm $fname_tcoffee
touch $fname_magus
#touch $fname_tcoffee

for d in ${arr[@]}
do
	echo "cd $d; python ../../MAGUS/magus.py -d $d.$size.dir --maxnumsubsets 1000 --maxsubsetsize $size -i $d.in.fasta -o ../experiment2/$d.magus.$size.fasta" >> "$fname_magus"	
#	echo "cd $d; t_coffee -seq $d.in.fasta -nseq $size -tree fastparttree -method mafftlinsi_msa -outfile ../experiment2/$d.RTL.$size.fasta" -reg -thread 0 >> "$fname_tcoffee"
	#echo "cd $d; FastTree -nt $d.mafft.aln.fasta > ../trees/$d.mafft.tree" >> fasttree.swarm
	#echo "cd $d; FastTree -nt $d.clustalo.aln.fasta > ../trees/$d.clustalo.tree" >> fasttree.swarm
	#echo "cd $d; FastTree -nt $d.magus.aln.fasta > ../trees/$d.magus.tree" >> fasttree.swarm
	#echo "cd $d; FastTree -nt $d.in.fasta_aln > ../trees/$d.RTL.tree" >> fasttree.swarm
done

touch "$fname_magus.sh"
#touch "$fname_tcoffee.sh"

echo "#!/bin/bash" > "$fname_magus.sh"
#echo "#!/bin/bash" > "$fname_tcoffee.sh"
#echo "swarm -f ../$fname_magus -g 80 -t auto --module mafft/7.407 --partition=ccr" >> "$fname_magus.sh"
echo "swarm -f ../$fname_magus -g 80 -t auto --module mafft,FastTree,hmmer,clustalo,python/3.8 --partition=ccr" >> "$fname_magus.sh"
#echo "swarm -f ../$fname_tcoffee -g 80 -t auto --module mafft/7.407 --partition=ccr" >> "$fname_tcoffee.sh"
