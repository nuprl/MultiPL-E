#!/bin/bash
# You're given a list of deposit and withdrawal operations on a bank account that starts with
# zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
# at that point function should return True. Otherwise it should return False.
# >>> below_zero([1, 2, 3])
# False
# >>> below_zero([1, 2, -4, 5])
# True
#
# $1 is a space-separated list
below_zero() {
echo 0

}

candidate() {
    below_zero "$@"
}

run_test() {
    [[ $(candidate "") = false ]]
    [[ $(candidate "1 2 -3 1 2 -3") = false ]]
    [[ $(candidate "1 2 -4 5 6") = true ]]
    [[ $(candidate "1 -1 2 -2 5 -5 4 -4") = false ]]
    [[ $(candidate "1 -1 2 -2 5 -5 4 -5") = true ]]
    [[ $(candidate "1 -2 2 -2 5 -5 4 -4") = true ]]
}

run_test