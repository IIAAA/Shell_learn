#!/bin/bash
expect << EOF
	spawn ftp 192.168.4.7
	expect "Name"	{send "tomcat\n"}
	expect "Password"	{send "ov44p5of\n"}
	expect "ftp"	{send "get test.txt\n"}
	expect "ftp"	{send "exit\n"}
	expect "#"	{send "exit\n"}
EOF
