#!/bin/bash
touch inputFile
cat /dev/null > inputFile
for i in `seq 10`
do
	echo $i, `od -An -N1 -i /dev/random` >> inputFile
done
