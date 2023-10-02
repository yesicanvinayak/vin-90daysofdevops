#!/bin/bash

# To take inputs from usrs
echo -n "You are using script to compaire two numbers"
echo -n "Enter your first number:- "
read num1
echo -n "Enter your second number:- "
read num2

if (($num1 == $num2))
then
echo "number $num1 and number $num2 Both numbers are equal "
elif   (($num1 > $num2))
then
echo "number $num1 is greater than number $num2"
else
echo "number $num1 is less than number $num2"
fi
