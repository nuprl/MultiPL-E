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
    if [ $1 -eq 1 ] || [ $1 -eq 2 ]; then
        echo 1
    else
        echo $(( $(fib $(($1 - 1))) + $(fib $(($1 - 2))) ))
    fi

}

candidate() {
    fib "$@"
}

set -e
run_test() {
    [[ $(candidate "10") = "55" ]]
    [[ $(candidate "1") = "1" ]]
    [[ $(candidate "8") = "21" ]]
    [[ $(candidate "11") = "89" ]]
    [[ $(candidate "12") = "144" ]]
}

run_test