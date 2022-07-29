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
prime_fib() {
echo 0

}

candidate() {
    prime_fib "$@"
}

run_test() {
    [[ $(candidate 1) = 2 ]]
    [[ $(candidate 2) = 3 ]]
    [[ $(candidate 3) = 5 ]]
    [[ $(candidate 4) = 13 ]]
    [[ $(candidate 5) = 89 ]]
    [[ $(candidate 6) = 233 ]]
    [[ $(candidate 7) = 1597 ]]
    [[ $(candidate 8) = 28657 ]]
    [[ $(candidate 9) = 514229 ]]
    [[ $(candidate 10) = 433494437 ]]
}

run_test