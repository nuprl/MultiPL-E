#!/bin/bash
# Write a function that takes a string and returns True if the string
# length is a prime number or False otherwise
# Examples
# prime_length('Hello') == True
# prime_length('abcdcba') == True
# prime_length('kittens') == True
# prime_length('orange') == False
#
# $1 is a string
prime_length() {
    if [[ $1 =~ [^0-9] ]]; then
        echo "False"
    else
        if [[ $1 =~ ^[0-9]+$ ]]; then
            if [[ $1 =~ ^[0-9]*[02468]$ ]]; then
                echo "False"
            else
                echo "True"
            fi
        else
            echo "False"
        fi
    fi

}

candidate() {
    prime_length "$@"
}

set -e
run_test() {
    [[ $(candidate "Hello") = "true" ]]
    [[ $(candidate "abcdcba") = "true" ]]
    [[ $(candidate "kittens") = "true" ]]
    [[ $(candidate "orange") = "false" ]]
    [[ $(candidate "wow") = "true" ]]
    [[ $(candidate "world") = "true" ]]
    [[ $(candidate "MadaM") = "true" ]]
    [[ $(candidate "Wow") = "true" ]]
    [[ $(candidate "") = "false" ]]
    [[ $(candidate "HI") = "true" ]]
    [[ $(candidate "go") = "true" ]]
    [[ $(candidate "gogo") = "false" ]]
    [[ $(candidate "aaaaaaaaaaaaaaa") = "false" ]]
    [[ $(candidate "Madam") = "true" ]]
    [[ $(candidate "M") = "false" ]]
    [[ $(candidate "0") = "false" ]]
}

run_test