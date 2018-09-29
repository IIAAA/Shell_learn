#!/bin/bash
read -p "请输入你要检查的网卡名称:" name
x=1
mkip(){
	nmcli connection modify $name ipv4.method manual ipv4.addresses 192.168.4.$i connection.autoconnect yes
	nmcli connection up $name
	let x+=1
}
ifconfig $name | grep inet
[ $? -eq 0  ] $wk && echo "网卡已有IP" || mkip

