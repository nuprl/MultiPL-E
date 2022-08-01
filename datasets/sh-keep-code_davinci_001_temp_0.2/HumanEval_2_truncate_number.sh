#!/bin/bash
# Given a positive floating point number, it can be decomposed into
# and integer part (largest integer smaller than given number) and decimals
# (leftover part always smaller than 1).
# Return the decimal part of the number.
# >>> truncate_number(3.5)
# 0.5
#
# $1 is a floating point
truncate_number() {
    local number=$1
    local integer_part=$(echo $number | cut -d. -f1)
    local decimal_part=$(echo $number | cut -d. -f2)
    echo $decimal_part

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