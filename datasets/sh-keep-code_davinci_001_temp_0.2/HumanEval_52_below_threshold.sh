#!/bin/bash
# Return True if all numbers in the list l are below threshold t.
# >>> below_threshold([1, 2, 4, 10], 100)
# True
# >>> below_threshold([1, 20, 4, 10], 5)
# False
#
# $1 is a space-separated list
# $2 is an integer
below_threshold() {
echo 0

}

candidate() {
    below_threshold "$@"
}

run_test() {
    [[ $(candidate "1 2 4 10" 100) = true ]]
    [[ $(candidate "1 20 4 10" 5) = false ]]
    [[ $(candidate "1 20 4 10" 21) = true ]]
    [[ $(candidate "1 20 4 10" 22) = true ]]
    [[ $(candidate "1 8 4 10" 11) = true ]]
    [[ $(candidate "1 8 4 10" 10) = false ]]
}

run_test