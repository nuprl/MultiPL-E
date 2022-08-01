#!/bin/bash
# Write a function that takes an array of numbers as input and returns 
# the number of elements in the array that are greater than 10 and both 
# first and last digits of a number are odd (1, 3, 5, 7, 9).
# For example:
# specialFilter([15, -73, 14, -15]) => 1 
# specialFilter([33, -2, -3, 45, 21, 109]) => 2
#
# $1 is a space-separated list
specialFilter() {
    local count=0
    local numbers=($1)
    for (( i=0; i<${#numbers[@]}; i++ )); do
        if [[ ${numbers[$i]} -gt 10 && ${numbers[$i]:0:1} -eq 1 && ${numbers[$i]: -1:1} -eq 1 ]]; then
            ((count++))
        fi
    done
    echo $count

}

candidate() {
    specialFilter "$@"
}

run_test() {
    [[ $(candidate "5 -2 1 -5") = 0 ]]
    [[ $(candidate "15 -73 14 -15") = 1 ]]
    [[ $(candidate "33 -2 -3 45 21 109") = 2 ]]
    [[ $(candidate "43 -12 93 125 121 109") = 4 ]]
    [[ $(candidate "71 -2 -33 75 21 19") = 3 ]]
    [[ $(candidate "1") = 0 ]]
    [[ $(candidate "") = 0 ]]
}

run_test