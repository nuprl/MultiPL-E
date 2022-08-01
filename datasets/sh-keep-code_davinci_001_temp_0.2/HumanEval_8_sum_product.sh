#!/bin/bash
# For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
# Empty sum should be equal to 0 and empty product should be equal to 1.
# >>> sum_product([])
# (0, 1)
# >>> sum_product([1, 2, 3, 4])
# (10, 24)
#
# $1 is a space-separated list
sum_product() {
    local sum=0
    local product=1
    for i in $1; do
        sum=$((sum + i))
        product=$((product * i))
    done
    echo "$sum $product"

}

candidate() {
    sum_product "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "0 1" ]]
    [[ $(candidate "1 1 1") = "3 1" ]]
    [[ $(candidate "100 0") = "100 0" ]]
    [[ $(candidate "3 5 7") = "15 105" ]]
    [[ $(candidate "10") = "10 10" ]]
}

run_test