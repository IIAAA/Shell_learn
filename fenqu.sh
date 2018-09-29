#!/bin/bash
for i in b c
do
	mkdir /mnt/vd$i"1"
	mkdir /mnt/vd$i"2"
	echo yes | parted /dev/vd$i mklabel gpt
	echo I | parted /dev/vd$i mkpart primary 1 5096
	echo I | parted /dev/vd$i mkpart logical 5097 10192
	mkfs.ext4 /dev/vd$i"1"
	mkfs.ext4 /dev/vd$i"2"
	mount /dev/vd$i"1" /mnt/vd$i"1"
	mount /dev/vd$i"2" /mnt/vd$i"2"
done	

