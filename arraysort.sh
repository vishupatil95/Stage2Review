#!/bin/bash

for((cnt=0;cnt<=10;cnt++))
do
	arr[$cnt]=$((RANDOM%900+100))
done

echo "Actual array"
echo ${arr[@]}

for((cnt=0;cnt<=10;cnt++))
do
		if [ $cnt -eq 0 ]
		then
			result=${arr[cnt]};
		else
			result=$result"\n"${arr[cnt]};

		fi
done

echo -e $result | sort;

secondSmallest=`echo -e $result | sort | head -2 | tail -1`;

secondLargest=`echo -e $result | sort | tail -2 | head -1`;

echo "Second smallest number is : $secondSmallest";
echo "Second Largest number is : $secondLargest";

