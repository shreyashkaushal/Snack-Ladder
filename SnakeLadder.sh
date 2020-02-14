#!/bin/bash
echo "    Snake Ladder game simulation    "
echo "===================================================================="
num1=100
num2=91
for((i=0;i<10;i++))
do
	a=$num1
	b=$num2
echo -n " " 
	for((j=0;j<10;j++))
	do
	if(($((i%2))==1))
	then
		echo -n "$b ||"
		b=$((b+1))
	elif(($((i%2))==0)) 
	then
		echo -n "$a ||"
		a=$((a-1))
	fi
	done
	num1=$((num1-10))
	num2=$((num2-10))	
    echo " "
done
echo "===================================================================="