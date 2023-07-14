#!/bin/bash
number=$1
if [ $(( $number & 1 )) == 1 ]
then
	if [ $number == 1 ]
	then
		echo "No"
	else
		sqr_root=`echo "scale=0; sqrt($number)" | bc`
		for i in $(seq 3 $sqr_root)
		do
			if [ $( expr $number % $i ) == 0 ]
			then 
				echo "No"
				exit
			fi
		done
		echo "Yes"
	fi
else
	if [ $number == 2 ]
	then
		echo "Yes"
	else
		echo "No"
	fi
fi
