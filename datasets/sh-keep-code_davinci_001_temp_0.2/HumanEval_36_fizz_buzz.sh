#!/bin/bash
# Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
# >>> fizz_buzz(50)
# 0
# >>> fizz_buzz(78)
# 2
# >>> fizz_buzz(79)
# 3
#
# $1 is an integer
fizz_buzz() {
echo 0

}

candidate() {
    fizz_buzz "$@"
}

run_test() {
    [[ $(candidate 50) = 0 ]]
    [[ $(candidate 78) = 2 ]]
    [[ $(candidate 79) = 3 ]]
    [[ $(candidate 100) = 3 ]]
    [[ $(candidate 200) = 6 ]]
    [[ $(candidate 4000) = 192 ]]
    [[ $(candidate 10000) = 639 ]]
    [[ $(candidate 100000) = 8026 ]]
}

run_test