#!/bin/bash
# remove_vowels is a function that takes string and returns string without vowels.
# >>> remove_vowels('')
# ''
# >>> remove_vowels('abcdef')
# 'bcdf'
# >>> remove_vowels('aaaaa')
# ''
# >>> remove_vowels('aaBAA')
# 'B'
# >>> remove_vowels('zbcd')
# 'zbcd'
#
# $1 is a string
remove_vowels() {
echo 0

}

candidate() {
    remove_vowels "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "abcdef\nghijklm") = "bcdf\nghjklm" ]]
    [[ $(candidate fedcba) = fdcb ]]
    [[ $(candidate eeeee) = "" ]]
    [[ $(candidate acBAA) = cB ]]
    [[ $(candidate EcBOO) = cB ]]
    [[ $(candidate ybcd) = ybcd ]]
}

run_test