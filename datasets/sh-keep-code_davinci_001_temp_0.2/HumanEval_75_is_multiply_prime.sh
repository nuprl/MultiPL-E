#!/bin/bash
# Write a function that returns true if the given number is the multiplication of 3 prime numbers
# and false otherwise.
# Knowing that (a) is less then 100. 
# Example:
# is_multiply_prime(30) == True
# 30 = 2 * 3 * 5
#
# $1 is an integer
is_multiply_prime() {
    local number=$1
    local prime_number=2
    local is_multiply_prime=true
    while [ $prime_number -lt $number ]
    do
        if [ $((number % prime_number)) -eq 0 ]
        then
            is_multiply_prime=false
            break
        fi
        prime_number=$((prime_number + 1))
    done
    echo $is_multiply_prime

}

candidate() {
    is_multiply_prime "$@"
}

set -e
run_test() {
    [[ $(candidate "5") = "false" ]]
    [[ $(candidate "30") = "true" ]]
    [[ $(candidate "8") = "true" ]]
    [[ $(candidate "10") = "false" ]]
    [[ $(candidate "125") = "true" ]]
    [[ $(candidate "105") = "true" ]]
    [[ $(candidate "126") = "false" ]]
    [[ $(candidate "729") = "false" ]]
    [[ $(candidate "891") = "false" ]]
    [[ $(candidate "1001") = "true" ]]
}

run_test