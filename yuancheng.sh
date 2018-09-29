#!/bin/bash
pssh(){
	ssh $1 $2
}
for i in desktop server
do
	pssh $i "yum -y install vsftpd" &
done
