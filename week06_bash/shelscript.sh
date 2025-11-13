#! /bin/bash

funcs()
{
    sum=0
    for n in $(seq 1 $1); do
        if [ $(($n % 2)) -eq 0 ]; then
            sum=$(($sum + $n))
        fi
    done
    echo "$sum"
}
read -p "Enter a number: " NUM
funcs $NUM