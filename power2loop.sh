#!/bin/bash

read -p "Enter a number: " num

condition=$((2**num))

for ((cnt=1; cnt<= $num; cnt++))
do
	result=$((2**cnt))

	echo "Result: " $result;

done
