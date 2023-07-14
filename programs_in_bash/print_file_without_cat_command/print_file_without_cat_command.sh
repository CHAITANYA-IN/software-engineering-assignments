#!/bin/bash
if [ -f "$1" ]
then
    while IFS= read -r line || [ -n "$line" ]
    do
        echo "$line"
    done < "$1"
else
    echo "Error: Wrong path to a file"
fi