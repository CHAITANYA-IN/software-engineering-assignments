#!/bin/bash
year=2000
n=0
while [ $n != 10 ]
do
    if [ $(( $year % 4 )) == 0 ] && [ $(( $year % 100 )) != 0 ] || [ $(( $year % 400 )) == 0 ]
    then
        echo $year
        n=$(( n+1 ))
        year=$(( year+4 ))
    else
        year=$(( year+1 ))
    fi
done