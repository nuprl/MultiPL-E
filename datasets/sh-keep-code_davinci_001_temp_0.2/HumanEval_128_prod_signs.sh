#!/bin/bash
# You are given an array arr of integers and you need to return
# sum of magnitudes of integers multiplied by product of all signs
# of each number in the array, represented by 1, -1 or 0.
# Note: return None for empty arr.
# Example:
# >>> prod_signs([1, 2, 2, -4]) == -9
# >>> prod_signs([0, 1]) == 0
# >>> prod_signs([]) == None
#
# $1 is a space-separated list
prod_signs() {
echo 0

}

candidate() {
    prod_signs "$@"
}

run_test() {
    [[ $(candidate "1 2 2 -4") = -9 ]]
    [[ $(candidate "0 1") = 0 ]]
    [[ $(candidate "1 1 1 2 3 -1 1") = -10 ]]
    [[ $(candidate "") = None ]]
    [[ $(candidate "2 4 1 2 -1 -1 9") = 20 ]]
    [[ $(candidate "-1 1 -1 1") = 4 ]]
    [[ $(candidate "-1 1 1 1") = -4 ]]
    [[ $(candidate "-1 1 1 0") = 0 ]]
}

run_test