#!/bin/bash
num=$(cat user.txt | wc -l)
sjnum=$[$RANDOM%$num]
echo $(head -$sjnum user.txt | tail -1)
