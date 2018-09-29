#!/bin/bash
myping(){
	ping -c1 -W1 $1 &> /dev/null 
	if [ $? -eq 0 ];then
		echo "$1"活着 >> up.txt
	else
		echo "$1"死了 >> down.txt
	fi
}
for i in {1..254}
do
	myping 176.19.2.$i &
done
wait
