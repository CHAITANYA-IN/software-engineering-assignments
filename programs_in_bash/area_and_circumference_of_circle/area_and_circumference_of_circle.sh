#!/bin/bash
pi=$(echo 22 / 7 | bc -l)
circumference=$(echo 2 \* $pi \* $1 | bc -l)
area=$(echo $circumference \* $circumference / 4 / $pi | bc -l)
echo "Circumference : $circumference units"
echo "Area : $area square units"
