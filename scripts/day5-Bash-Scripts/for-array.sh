#!/bin/bash

##Array iteration for loops##

#We can iterate over arrays conveniently in bash using for loops with a specific syntax. 
#We can use the special variables in BASH i.e @ to access all the elements in the array.

s=("Vinayak" "Vansh" "Ansh") 
for n in ${s[@]}; 
#Here, the “n” is the iterator hence, we can print the value or do the required processing on it. 

do
    echo $n
done