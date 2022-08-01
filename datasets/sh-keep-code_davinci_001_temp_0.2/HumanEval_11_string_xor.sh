#!/bin/bash
# Input are two strings a and b consisting only of 1s and 0s.
# Perform binary XOR on these inputs and return result also as a string.
# >>> string_xor('010', '110')
# '100'
#
# $1 is a string
# $2 is a string
string_xor() {
echo 0

}

candidate() {
    string_xor "$@"
}

run_test() {
    [[ $(candidate 111000 101010) = 010010 ]]
    [[ $(candidate 1 1) = 0 ]]
    [[ $(candidate 0101 0000) = 0101 ]]
}

run_test