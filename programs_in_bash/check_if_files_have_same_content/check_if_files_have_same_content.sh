#!/bin/bash 
if [ -f $1 ] && [ -f $2 ]
then
    line="$( diff -qr "$1" "$2" )" # Can use hash code algorithms like shasum, md5sum, etc. instead.
    if [ ${#line} == 0 ]
    then
        echo "Success"
    else
        echo "Fail"
    fi
else
    echo "Bad Arguments"
fi
