#!/bin/bash
i=0
j=0
read -p "请输入你要打印的列数:" lie
read -p "请输入你要打印的行数:" hang
while [ $j -lt $hang ]
do
	while [ $i -lt $lie ]
	do
		echo -n \*
		let i++
	done
	let j++
done
exit
