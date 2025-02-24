#!/bin/bash

# Read two numbers
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2

# Perform comparisons
if [ $num1 -eq $num2 ]; then
    echo "$num1 is equal to $num2 (-eq)"
fi

if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2 (-gt)"
fi

if [ $num1 -lt $num2 ]; then
    echo "$num1 is less than $num2 (-lt)"
fi

if [ $num1 -ge $num2 ]; then
    echo "$num1 is greater than or equal to $num2 (-ge)"
fi

if [ $num1 -le $num2 ]; then
    echo "$num1 is less than or equal to $num2 (-le)"
fi

