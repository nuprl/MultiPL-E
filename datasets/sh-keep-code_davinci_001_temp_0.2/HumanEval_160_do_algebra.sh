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
    local operator="$1"
    local operand="$2"
    local result=0
    local i=0
    local j=0
    local op=0
    local opr=0
    local op1=0
    local op2=0
    local op1_str=""
    local op2_str=""
    local opr_str=""
    local op_str=""
    local op_str_len=0
    local op_str_len_max=0
    local op_str_len_min=0
    local op_str_len_avg=0
    local op_str_len_sum=0
    local op_str_len_count=0
    local op_str_len_max_index=0
    local op_str_len_min_index=0
    local op_str_len_avg_index=0
    local op_str_len_sum_index=0
    local op_str_len_count_index=0
    local op_str_len_max_index_str=""
    local op_str_len_min_index_str=""
    local op_str_len_avg_index_str=""
    local op_str_len_sum_index_str=""
    local op_str_len_count_index_str=""
    local op_str_len_max_index_str_len=0
    local op_str_len_min_index_str_len=0
    local op_str_len_avg_index_str_len=0
    local op_str_len_sum_index_str_len=0
    local op_str_len_count_index_str_len=0
    local op_str_len_max_index_str_len_max=0
    local op_str_len_min_index_str_len_min=0
    local op_str_len_avg_index_str_len_avg=0
    local op_str_len_sum_index_str_len_sum=0
    local op_str_len_count_index_str_len

}

candidate() {
    do_algebra "$@"
}

set -e
run_test() {
    [[ $(candidate "** * +" "2 3 4 5") = "37" ]]
    [[ $(candidate "+ * -" "2 3 4 5") = "9" ]]
    [[ $(candidate "// *" "7 3 4") = "8" ]]
}

run_test