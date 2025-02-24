#!/bin/bash

# Prompt the user to enter a password
read -sp "Enter your password: " password
echo

# Password strength criteria
min_length=8
has_uppercase=false
has_lowercase=false
has_number=false
has_special_char=false

# Check the length of the password
if [ ${#password} -ge $min_length ]; then
    length_valid=true
else
    length_valid=false
fi

# Check for uppercase, lowercase, number, and special character
if [[ $password =~ [A-Z] ]]; then
    has_uppercase=true
fi

if [[ $password =~ [a-z] ]]; then
    has_lowercase=true
fi

if [[ $password =~ [0-9] ]]; then
    has_number=true
fi

if [[ $password =~ [^a-zA-Z0-9] ]]; then
    has_special_char=true
fi

# Validate password strength
if $length_valid && $has_uppercase && $has_lowercase && $has_number && $has_special_char; then
    echo "Password is strong."
else
    echo "Password is weak. It must meet the following criteria:"
    if [ "$length_valid" = false ]; then
        echo "- At least $min_length characters long"
    fi
    if [ "$has_uppercase" = false ]; then
        echo "- At least one uppercase letter"
    fi
    if [ "$has_lowercase" = false ]; then
        echo "- At least one lowercase letter"
    fi
    if [ "$has_number" = false ]; then
        echo "- At least one number"
    fi
    if [ "$has_special_char" = false ]; then
        echo "- At least one special character (e.g., @, #, $, etc.)"
    fi
fi

