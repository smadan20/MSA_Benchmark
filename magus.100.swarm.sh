#!/bin/bash
swarm -f ../magus.100.swarm -g 80 -t auto --module mafft,FastTree,hmmer,clustalo,python/3.8 --partition=ccr
