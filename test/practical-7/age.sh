#!/bin/bash
# Read user name and age
echo "Enter your name:"
read name
echo "Enter your age:"
read age 

# Calculate the year when the user will turn 50
year=$((50 - age + $(date +%Y)))


echo "$name will turn 50 years old in $year."

