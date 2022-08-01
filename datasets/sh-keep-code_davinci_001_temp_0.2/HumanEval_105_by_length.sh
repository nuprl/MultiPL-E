#!/bin/bash
# Given an array of integers, sort the integers that are between 1 and 9 inclusive,
# reverse the resulting array, and then replace each digit by its corresponding name from
# "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
# For example:
# arr = [2, 1, 1, 4, 5, 8, 2, 3]   
# -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
# -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
# return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
# If the array is empty, return an empty array:
# arr = []
# return []
# If the array has any strange number ignore it:
# arr = [1, -1 , 55] 
# -> sort arr -> [-1, 1, 55]
# -> reverse arr -> [55, 1, -1]
# return = ['One']
#
# $1 is a space-separated list
by_length() {
    local -i len="${#1}"
    echo "$len $1"

}

candidate() {
    by_length "$@"
}

run_test() {
    [[ $(candidate "2 1 1 4 5 8 2 3") = "Eight Five Four Three Two Two One One" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate "1 -1 55") = "One" ]]
    [[ $(candidate "1 -1 3 2") = "Three Two One" ]]
    [[ $(candidate "9 4 8") = "Nine Eight Four" ]]
}

run_test