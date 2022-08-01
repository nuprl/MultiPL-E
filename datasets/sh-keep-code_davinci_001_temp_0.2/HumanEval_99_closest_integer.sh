#!/bin/bash
# Create a function that takes a value (string) representing a number
# and returns the closest integer to it. If the number is equidistant
# from two integers, round it away from zero.
# Examples
# >>> closest_integer("10")
# 10
# >>> closest_integer("15.3")
# 15
# Note:
# Rounding away from zero means that if the given number is equidistant
# from two integers, the one you should return is the one that is the
# farthest from zero. For example closest_integer("14.5") should
# return 15 and closest_integer("-14.5") should return -15.
#
# $1 is a string
closest_integer() {
    # Convert string to number
    num=$(echo $1 | bc -l)
    # Round number to nearest integer
    rounded=$(echo "scale=0; $num+0.5" | bc)
    # Convert number to string
    echo $rounded | awk '{printf "%f", $0}'

}

candidate() {
    closest_integer "$@"
}

run_test() {
    [[ $(candidate 10) = 10 ]]
    [[ $(candidate 14.5) = 15 ]]
    [[ $(candidate -15.5) = -16 ]]
    [[ $(candidate 15.3) = 15 ]]
    [[ $(candidate 0) = 0 ]]
}

run_test