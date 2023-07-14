#!/bin/bash
if [ -d "$2" ]
then
    echo "Moving Duplicates in the existing directory"
else
    echo "Moving Duplicates in the new directory"
    mkdir "$2"
fi
w=("$1/*")
for i in ${w[@]}
do
    for j in ${w[@]}
    do
        if [ ! "$i" = "$j" ] && [ -f "$i" ] && [ -f "$j" ]
        then
            line="$( diff -qr "$i" "$j" )" # Use hash code algorithms like shasum, md5sum, etc. instead of diff
            # echo "$1/$i" "$1/$j"
            if [ ${#line} == 0 ]
            then
                mv "$j" "$2"
                echo "$j moved"
            fi
        fi
    done
done