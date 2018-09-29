#!/bin/bash
read -p "请输入第一个整数:" num1
read -p "请输入第二个整数:" num2
read -p "请输入第三个整数:" num3
if [ $num2 -gt $num1 ];then
	tmp=$num2
	num2=$num1
	num1=$tmp
fi
if [ $num3 -gt $num1 ];then
	tmp=$num3
	num3=$num1
	num1=$tmp 
fi
if [ $num3 -gt $num2 ];then
	tmp=$num3
	num3=$num2
	num2=$tmp
fi
echo $num1 $num2 $num3
