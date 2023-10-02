#!/bin/bash

#we use the “{}” to specify a range of numbers.

for n in {4..30..4}; 
#Inside the curly braces, we specify the start point followed by two dots and an endpoint. 
#Third number "4" is incremental object By default, it increments by one but here we mention to increment by "4" 

do
    echo $n
done