#!/bin/bash

swarm -f ../magus.swarm -g 200 -t 16 --module mafft,FastTree,hmmer,clustalo,python/3.8
