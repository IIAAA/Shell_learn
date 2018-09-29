read -p "请输入一个字符:" zf
case $zf in
[a-z]|[A-Z])
	echo "字符";;
[0-9])
	echo "数字";;
*)
	echo "符号"
esac
