#!/bin/bash
# Return a greatest common divisor of two integers a and b
# >>> greatest_common_divisor(3, 5)
# 1
# >>> greatest_common_divisor(25, 15)
# 5
#
# $1 is an integer
# $2 is an integer
greatest_common_divisor() {
echo 0

}

candidate() {
    greatest_common_divisor "$@"
}

run_test() {
    [[ $(candidate 3 7) = 1 ]]
    [[ $(candidate 10 15) = 5 ]]
    [[ $(candidate 49 14) = 7 ]]
    [[ $(candidate 144 60) = 12 ]]
}

run_test