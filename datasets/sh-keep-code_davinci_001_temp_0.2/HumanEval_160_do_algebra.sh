#!/bin/bash
# Given two lists operator, and operand. The first list has basic algebra operations, and 
# the second list is a list of integers. Use the two given lists to build the algebric 
# expression and return the evaluation of this expression.
# The basic algebra operations:
# Addition ( + ) 
# Subtraction ( - ) 
# Multiplication ( * ) 
# Floor division ( // ) 
# Exponentiation ( ** ) 
# Example:
# operator['+', '*', '-']
# array = [2, 3, 4, 5]
# result = 2 + 3 * 4 - 5
# => result = 9
# Note:
# The length of operator list is equal to the length of operand list minus one.
# Operand is a list of of non-negative integers.
# Operator list has at least one operator, and operand list has at least two operands.
#
# $1 is a space-separated list
# $2 is a space-separated list
do_algebra() {
echo 0

}

candidate() {
    do_algebra "$@"
}

run_test() {
    [[ $(candidate "** * +" "2 3 4 5") = 37 ]]
    [[ $(candidate "+ * -" "2 3 4 5") = 9 ]]
    [[ $(candidate "// *" "7 3 4") = 8 ]]
}

run_test