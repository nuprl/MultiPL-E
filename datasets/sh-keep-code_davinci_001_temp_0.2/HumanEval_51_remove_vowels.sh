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
    local result=''
    for (( i=0; i<${#1}; i++ )); do
        if [[ ! "${1:$i:1}" =~ [aeiouAEIOU] ]]; then
            result+="${1:$i:1}"
        fi
    done
    echo "$result"

}

candidate() {
    remove_vowels "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "abcdef\
ghijklm") = "bcdf\
ghjklm" ]]
    [[ $(candidate "fedcba") = "fdcb" ]]
    [[ $(candidate "eeeee") = "" ]]
    [[ $(candidate "acBAA") = "cB" ]]
    [[ $(candidate "EcBOO") = "cB" ]]
    [[ $(candidate "ybcd") = "ybcd" ]]
}

run_test