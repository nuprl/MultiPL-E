#!/bin/bash
# You are given two positive integers n and m, and your task is to compute the
# average of the integers from n through m (including n and m). 
# Round the answer to the nearest integer and convert that to binary.
# If n is greater than m, return -1.
# Example:
# rounded_avg(1, 5) => "0b11"
# rounded_avg(7, 5) => -1
# rounded_avg(10, 20) => "0b1111"
# rounded_avg(20, 33) => "0b11010"
#
# $1 is an integer
# $2 is an integer
rounded_avg() {
echo 0

}

candidate() {
    rounded_avg "$@"
}

run_test() {
    [[ $(candidate 1 5) = 0b11 ]]
    [[ $(candidate 7 13) = 0b1010 ]]
    [[ $(candidate 964 977) = 0b1111001010 ]]
    [[ $(candidate 996 997) = 0b1111100100 ]]
    [[ $(candidate 560 851) = 0b1011000010 ]]
    [[ $(candidate 185 546) = 0b101101110 ]]
    [[ $(candidate 362 496) = 0b110101101 ]]
    [[ $(candidate 350 902) = 0b1001110010 ]]
    [[ $(candidate 197 233) = 0b11010111 ]]
    [[ $(candidate 7 5) = -1 ]]
    [[ $(candidate 5 1) = -1 ]]
    [[ $(candidate 5 5) = 0b101 ]]
}

run_test