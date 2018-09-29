#!/bin/bash
rpm -q httpd >> httpd.log
[ $? -eq 0 ] && echo "已经安装" || echo 安装完成 || yum -y install httpd 
