#!/bin/bash
# Given a positive floating point number, it can be decomposed into
# and integer part (largest integer smaller than given number) and decimals
# (leftover part always smaller than 1).
# Return the decimal part of the number.
# >>> truncate_number(3.5)
# 0.5
truncate_number() {
echo 0

}

candidate() {
    truncate_number "$@"
}

run_test() {
    [[ $(candidate 3.5) = 0.5 ]]
    [[ $(candidate 1.25) = 0.25 ]]
    [[ $(candidate 123.0) = 0.0 ]]
}

run_test