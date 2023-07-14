#!/bin/bash
m=$1
if [ $m -lt $2 ]
then
	m=$2
fi
if [ $m -lt $3 ]
then
	m=$3
fi
echo $m
