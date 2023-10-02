#!/bin/bash

#arg1=Folder/directory name. 
#arg2=starting point to create dirctry
#arg3=endpoint to create dirctry. That is the last number of directory.
arg1=$1
arg2=$2
arg3=$3
n=$3
for (( i=$2 ; i<=$n ; i++ )); 
do
    mkdir "$1-$i"
done