#!/bin/bash
num=$(cat user.txt | wc -l)
yh=$(cat user.txt)
for i in $yh
do
	useradd $i
	echo "${i}123" | passwd --stdin $i
done
