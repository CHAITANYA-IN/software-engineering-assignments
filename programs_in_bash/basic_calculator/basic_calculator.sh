#!/bin/bash
echo "Operators that can be used : +, -, x, /, %"
echo -n "$@ = "
if [ $2 == "x" ]
then
	echo "$1 * $3" | bc -l
elif [ $2 == "%" ]
then
	echo "$1 % $3" | bc -i -q
else
	echo "$@" | bc -l
fi
