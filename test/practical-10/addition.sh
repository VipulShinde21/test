#!/bin/bash
if [ $# -eq 2 ]; then
	num1=$1
	num2=$2
	result=$((num1+num2))
	echo "The result is: $result"
else
	echo "Error: Please provide two numbers as command line args"
fi
