#!/bin/bash

  # Taking user input
  echo -n "Enter your name:"
  read username
  
  # Printing the User input using variable
  echo "Your name is: $username"

# Taking input from command line arguments
arg1=$1
arg2=$2

# To print the command line arguments
echo "Below are the command line arguments: "
echo "Argument-1: $arg1"
echo "Argument-2: $arg2"

