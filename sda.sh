#!/bin/bash
userbash=`awk -F: '/bash$/{print $1}' /etc/passwd`
for i in $userbash
do
	grep $i /etc/shadow | awk -F: '{print $1, "-->" ,$2}' >> /tmp/passwd.txt
done
