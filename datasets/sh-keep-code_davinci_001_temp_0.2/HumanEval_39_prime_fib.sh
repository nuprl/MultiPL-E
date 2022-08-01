#!/bin/bash
# prime_fib returns n-th number that is a Fibonacci number and it's also prime.
# >>> prime_fib(1)
# 2
# >>> prime_fib(2)
# 3
# >>> prime_fib(3)
# 5
# >>> prime_fib(4)
# 13
# >>> prime_fib(5)
# 89
#
# $1 is an integer
prime_fib() {
    local n=$1
    local a=1
    local b=1
    local c=0
    while [ $n -gt 0 ]
    do
        c=$((a + b))
        a=$b
        b=$c
        n=$((n - 1))
    done
    if [ $((a % 2)) -eq 0 ]
    then
        echo $((a + 1))
    else
        echo $a
    fi

}

candidate() {
    prime_fib "$@"
}

set -e
run_test() {
    [[ $(candidate "1") = "2" ]]
    [[ $(candidate "2") = "3" ]]
    [[ $(candidate "3") = "5" ]]
    [[ $(candidate "4") = "13" ]]
    [[ $(candidate "5") = "89" ]]
    [[ $(candidate "6") = "233" ]]
    [[ $(candidate "7") = "1597" ]]
    [[ $(candidate "8") = "28657" ]]
    [[ $(candidate "9") = "514229" ]]
    [[ $(candidate "10") = "433494437" ]]
}

run_test