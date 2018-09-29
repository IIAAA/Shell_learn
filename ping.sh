#!/bin/bash
i=1
while [ $i -le 254 ]
do
ping -c2 -i0.1 -W1 176.19.4.$i &> /dev/null
if [ $? -eq 0 ];then
	echo "176.19.4.$i"活着
	let i++
else
	echo "176.19.4.$i"死了
	let i++
fi
done
