#!/bin/bash
i=1
while [ $i -le $1 ]
do

    # Digit adjustment start
    extra_space=${#i}
    while [ $(( ${#1} - ${extra_space} )) -gt 0 ]
    do
        echo -n " "
        extra_space=$(( $extra_space + 1 ))
    done
    # Digit Adjustment end

    j=1
    k=$(( $1-$j ))
    while [ $k -gt 0 ]
    do
        if [ $(( $k+1 )) -gt $(( $i )) ]
        then 
            echo -n " "
            spaces=$(( ${#k} ))
            for ((l=0; l<$spaces; l++))
            do
                echo -n " "
            done
        else
            echo -n "$(( $k+1 )) "
        fi
        k=$(( $k-1 ))
    done
    while [ $j -le $i ]
    do
        echo -n "$j "
        j=$(( $j+1 ))
    done
    echo ""
    i=$(( $i+1 ))
done