#!/bin/bash
for i in {1..254}
do
expect << EOF
	spawn ssh -o StrictHostKeyChecking=no 176.19.2.$i
	expect password {send "Taren1\n"}
	expect #	{send "touch /12.txt\n"}
	expect #	{send "exit\n"}
EOF
done
