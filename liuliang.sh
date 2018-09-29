#!/bin/bash
setll=$(ifcongig eth0 | grep TX)
while :
do
	echo $setll
done
