#!/bin/bash
# Return true if a given number is prime, and false otherwise.
# >>> is_prime(6)
# False
# >>> is_prime(101)
# True
# >>> is_prime(11)
# True
# >>> is_prime(13441)
# True
# >>> is_prime(61)
# True
# >>> is_prime(4)
# False
# >>> is_prime(1)
# False
#
# $1 is an integer
is_prime() {
    if [ $1 -eq 1 ]; then
        return 1
    fi
    for (( i=2; i<$1; i++ )); do
        if [ $(( $1 % $i )) -eq 0 ]; then
            return 1
        fi
    done
    return 0

}

candidate() {
    is_prime "$@"
}

run_test() {
    [[ $(candidate 6) = false ]]
    [[ $(candidate 101) = true ]]
    [[ $(candidate 11) = true ]]
    [[ $(candidate 13441) = true ]]
    [[ $(candidate 61) = true ]]
    [[ $(candidate 4) = false ]]
    [[ $(candidate 1) = false ]]
    [[ $(candidate 5) = true ]]
    [[ $(candidate 11) = true ]]
    [[ $(candidate 17) = true ]]
    [[ $(candidate 85) = false ]]
    [[ $(candidate 77) = false ]]
    [[ $(candidate 255379) = false ]]
}

run_test