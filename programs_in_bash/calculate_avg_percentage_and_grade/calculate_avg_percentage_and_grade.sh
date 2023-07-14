#!/bin/bash
echo "Marks are assumed to be scaled to 100"
sum=0
for i in $@
do
	if [ $i -gt 100 -o $i -lt 0 ]
	then
		echo "ValueError: Marks must be in between 0 to 100"
		exit
	fi
	sum=$(expr $sum + $i)
done
sum=$(expr $sum / $#)
case $sum in 
    7[5-9]|[8-9][0-9]|100)
	echo "I-division"
    ;;
    [5-6][0-9]|7[0-4])
	echo "II-division"
    ;;
    3[5-9]|4[0-9])
	echo "III-division"
    ;;
    *)
	echo "Fail"
    ;;
esac