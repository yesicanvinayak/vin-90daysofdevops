#!/bin/bash
arg1=$1
arg2=$2
arg3=$3
n=$3
for (( i=$1 ; i<=$n ; i++ )); 
do
    rmdir "$1-$i"
done