#!/bin/bash
# In this problem, you will implement a function that takes two lists of numbers,
# and determines whether it is possible to perform an exchange of elements
# between them to make lst1 a list of only even numbers.
# There is no limit on the number of exchanged elements between lst1 and lst2.
# If it is possible to exchange elements between the lst1 and lst2 to make
# all the elements of lst1 to be even, return "YES".
# Otherwise, return "NO".
# For example:
# exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
# exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
# It is assumed that the input lists will be non-empty.
#
# $1 is a space-separated list
# $2 is a space-separated list
exchange() {
    # Write your code here
    local lst1=$1
    local lst2=$2
    local even=0
    for i in $lst1; do
        if [ $((i%2)) -eq 0 ]; then
            even=$((even+1))
        fi
    done
    for i in $lst2; do
        if [ $((i%2)) -eq 0 ]; then
            even=$((even-1))
        fi
    done
    if [ $even -eq 0 ]; then
        echo "YES"
    else
        echo "NO"
    fi

}

candidate() {
    exchange "$@"
}

run_test() {
    [[ $(candidate "1 2 3 4" "1 2 3 4") = YES ]]
    [[ $(candidate "1 2 3 4" "1 5 3 4") = NO ]]
    [[ $(candidate "1 2 3 4" "2 1 4 3") = YES ]]
    [[ $(candidate "5 7 3" "2 6 4") = YES ]]
    [[ $(candidate "5 7 3" "2 6 3") = NO ]]
    [[ $(candidate "3 2 6 1 8 9" "3 5 5 1 1 1") = NO ]]
    [[ $(candidate "100 200" "200 200") = YES ]]
}

run_test