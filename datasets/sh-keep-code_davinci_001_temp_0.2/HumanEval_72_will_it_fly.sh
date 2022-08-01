#!/bin/bash
# Write a function that returns True if the object q will fly, and False otherwise.
# The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
# Example:
# will_it_fly([1, 2], 5) ➞ False 
# # 1+2 is less than the maximum possible weight, but it's unbalanced.
# will_it_fly([3, 2, 3], 1) ➞ False
# # it's balanced, but 3+2+3 is more than the maximum possible weight.
# will_it_fly([3, 2, 3], 9) ➞ True
# # 3+2+3 is less than the maximum possible weight, and it's balanced.
# will_it_fly([3], 5) ➞ True
# # 3 is less than the maximum possible weight, and it's balanced.
#
# $1 is a space-separated list
# $2 is an integer
will_it_fly() {
    local sum=0
    local is_balanced=true
    local l=${#1}
    for (( i=0; i<l; i++ )); do
        sum=$((sum + ${1:i:1}))
        if [[ $((i % 2)) -eq 0 ]]; then
            if [[ $((sum % 2)) -ne 0 ]]; then
                is_balanced=false
                break
            fi
        fi
    done
    if [[ $is_balanced == true ]] && [[ $sum -le $2 ]]; then
        echo true
    else
        echo false
    fi

}

candidate() {
    will_it_fly "$@"
}

run_test() {
    [[ $(candidate "3 2 3" 9) = true ]]
    [[ $(candidate "1 2" 5) = false ]]
    [[ $(candidate "3" 5) = true ]]
    [[ $(candidate "3 2 3" 1) = false ]]
    [[ $(candidate "1 2 3" 6) = false ]]
    [[ $(candidate "5" 5) = true ]]
}

run_test