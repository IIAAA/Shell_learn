#!/bin/bash
for i in {1..9}
do
	for ((j=1;j<=i;j++))
	#for j in `seq 1 $i`
	do
		let x=i*j
		echo -n "$i*$j=$x "
	done
	echo ""
done 
