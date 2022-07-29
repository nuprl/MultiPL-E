#!/bin/bash
# The Brazilian factorial is defined as:
# brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
# where n > 0
# For example:
# >>> special_factorial(4)
# 288
# The function will receive an integer as input and should return the special
# factorial of this integer.
special_factorial() {
echo 0

}

candidate() {
    special_factorial "$@"
}

run_test() {
    [[ $(candidate 4) = 288 ]]
    [[ $(candidate 5) = 34560 ]]
    [[ $(candidate 7) = 125411328000 ]]
    [[ $(candidate 1) = 1 ]]
}

run_test