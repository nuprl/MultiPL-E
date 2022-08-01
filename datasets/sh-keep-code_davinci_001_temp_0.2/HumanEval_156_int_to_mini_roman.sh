#!/bin/bash
# Given a positive integer, obtain its roman numeral equivalent as a string,
# and return it in lowercase.
# Restrictions: 1 <= num <= 1000
# Examples:
# >>> int_to_mini_roman(19) == 'xix'
# >>> int_to_mini_roman(152) == 'clii'
# >>> int_to_mini_roman(426) == 'cdxxvi'
#
# $1 is an integer
int_to_mini_roman() {
echo 0

}

candidate() {
    int_to_mini_roman "$@"
}

run_test() {
    [[ $(candidate 19) = xix ]]
    [[ $(candidate 152) = clii ]]
    [[ $(candidate 251) = ccli ]]
    [[ $(candidate 426) = cdxxvi ]]
    [[ $(candidate 500) = d ]]
    [[ $(candidate 1) = i ]]
    [[ $(candidate 4) = iv ]]
    [[ $(candidate 43) = xliii ]]
    [[ $(candidate 90) = xc ]]
    [[ $(candidate 94) = xciv ]]
    [[ $(candidate 532) = dxxxii ]]
    [[ $(candidate 900) = cm ]]
    [[ $(candidate 994) = cmxciv ]]
    [[ $(candidate 1000) = m ]]
}

run_test