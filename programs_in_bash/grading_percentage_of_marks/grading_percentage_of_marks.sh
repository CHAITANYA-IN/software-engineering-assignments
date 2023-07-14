#!/bin/bash
echo "Marks are assumed to be scaled to 100"
sum=0
for i in $@
do
	if [ $i -gt 100 ]
	then
		echo "ValueError: Scale to 100"
		exit
	fi
	sum=$(expr $sum + $i)
done
sum=$(expr $sum / $#)
if [ $sum -ge 75 ]
then
	echo "I-division"
elif [ $sum -ge 50 ]
then
	echo "II-division"
elif [ $sum -ge 35 ]
then
	echo "III-division"
else
	echo "Fail"
fi
	
