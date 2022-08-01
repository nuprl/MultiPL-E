#!/bin/bash
# Return n-th Fibonacci number.
# >>> fib(10)
# 55
# >>> fib(1)
# 1
# >>> fib(8)
# 21
#
# $1 is an integer
fib() {
echo 0

}

candidate() {
    fib "$@"
}

run_test() {
    [[ $(candidate 10) = 55 ]]
    [[ $(candidate 1) = 1 ]]
    [[ $(candidate 8) = 21 ]]
    [[ $(candidate 11) = 89 ]]
    [[ $(candidate 12) = 144 ]]
}

run_test