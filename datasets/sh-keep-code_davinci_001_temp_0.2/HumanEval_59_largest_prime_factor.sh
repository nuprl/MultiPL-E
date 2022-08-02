#!/bin/bash
# Return the largest prime factor of n. Assume n > 1 and is not a prime.
# >>> largest_prime_factor(13195)
# 29
# >>> largest_prime_factor(2048)
# 2
#
# $1 is an integer
largest_prime_factor() {
    local n=$1
    local factor=2
    while [ $factor -lt $n ]; do
        if [ $(($n % $factor)) -eq 0 ]; then
            n=$(($n / $factor))
            factor=2
        else
            factor=$(($factor + 1))
        fi
    done
    echo $n

}

candidate() {
    largest_prime_factor "$@"
}

set -e
run_test() {
    [[ $(candidate "15") = "5" ]]
    [[ $(candidate "27") = "3" ]]
    [[ $(candidate "63") = "7" ]]
    [[ $(candidate "330") = "11" ]]
    [[ $(candidate "13195") = "29" ]]
}

run_test