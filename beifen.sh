#!/bin/bash
cd /etc
n=$(ls *.conf)
m=$(date +%Y%m%d)
for i in $n
do
	[ $i == "yum.conf" ] && continue
	tar -zcf /tmp/""$i-$m".tar.gz" $i
done
