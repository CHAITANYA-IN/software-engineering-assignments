#!/bin/bash
echo "./Program Cost_Price Selling_Price"
difference=$(( $2 - $1 ))
if [ ${difference} -ge 0 ]
then 
	echo -n "Profit : "
else 
	echo -n "Loss : "
	difference=$(( $difference * -1 ))
fi
echo "$difference"
