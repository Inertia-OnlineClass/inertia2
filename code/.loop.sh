#!/bin/bash
clear
echo -en "\e[0mEnter \e[33mText\e[0m You Want to Loop : "
read txt
echo -en "Enter looping \e[33mTimes\e[0m : "
read count
str=""
for ((x=0 ; x<=count ; x++)); do
	str+="$txt \n";
	done
termux-clipboard-set $str
