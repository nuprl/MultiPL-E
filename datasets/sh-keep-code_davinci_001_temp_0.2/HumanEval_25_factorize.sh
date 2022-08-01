#!/bin/bash
# Return list of prime factors of given integer in the order from smallest to largest.
# Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
# Input number should be equal to the product of all factors
# >>> factorize(8)
# [2, 2, 2]
# >>> factorize(25)
# [5, 5]
# >>> factorize(70)
# [2, 5, 7]
#
# $1 is an integer
factorize() {
echo 0

}

candidate() {
    factorize "$@"
}

run_test() {
    [[ $(candidate 2) = "2" ]]
    [[ $(candidate 4) = "2 2" ]]
    [[ $(candidate 8) = "2 2 2" ]]
    [[ $(candidate 57) = "3 19" ]]
    [[ $(candidate 3249) = "3 3 19 19" ]]
    [[ $(candidate 185193) = "3 3 3 19 19 19" ]]
    [[ $(candidate 20577) = "3 19 19 19" ]]
    [[ $(candidate 18) = "2 3 3" ]]
}

run_test