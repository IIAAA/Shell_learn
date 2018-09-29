#!/bin/bash
while :
do
read -p "你出什么的是:" row
n=$[$RANDOM%3]
if [ $n -eq 0 ];then
	if [ $row == "石头" ];then
		echo "平"
	elif [ $row == "剪刀" ];then
		echo "输" 
	else 
		echo "赢"
		exit
	fi
elif [ $n -eq 1 ];then
	
	if [ $row == "石头" ];then
		echo "赢"
		exit
	elif [ $row == "剪刀" ];then
		echo "平" 
	else 
		echo "输"
	fi
else

	if [ $row == "布" ];then
		echo "平"
	elif [ $row == "石头" ];then
		echo "输" 
	else 
		echo "赢"
		exit
	fi
fi
done	
