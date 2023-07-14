#!/bin/bash
if [ $(echo "$1" | rev) == $1 ]
then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi