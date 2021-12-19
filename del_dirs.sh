#!/bin/bash

cd $1

for i in $(seq 10 19)
do
	rm -rf R"$i"
done
