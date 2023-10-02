#!/bin/bash
#we use the “{}” to specify a range of numbers. 
for n in {1..10}; 
#Inside the curly braces, we specify the start point followed by two dots and an endpoint. 
#By default, it increments by one. 
#Hence we print 10 numbers from 1 to 10 both inclusive.
do
    echo $n
done