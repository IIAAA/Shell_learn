#!/bin/bash
case $1 in
redhat)
	echo "fedora";;
fedora)
	echo "redhat";;
*)
	echo "xxxxx" >&2;;
esac
