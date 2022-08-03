#!/bin/bash
# Checks if given string is a palindrome
# >>> is_palindrome('')
# True
# >>> is_palindrome('aba')
# True
# >>> is_palindrome('aaaaa')
# True
# >>> is_palindrome('zbcd')
# False
#
# $1 is a string
is_palindrome() {
    local str=$1
    local len=${#str}
    local i=0
    while [ $i -lt $((len/2)) ]; do
        if [ "${str:$i:1}" != "${str:$((len-i-1)):1}" ]; then
            return 1
        fi
        i=$((i+1))
    done
    return 0

}

candidate() {
    is_palindrome "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "true" ]]
    [[ $(candidate "aba") = "true" ]]
    [[ $(candidate "aaaaa") = "true" ]]
    [[ $(candidate "zbcd") = "false" ]]
    [[ $(candidate "xywyx") = "true" ]]
    [[ $(candidate "xywyz") = "false" ]]
    [[ $(candidate "xywzx") = "false" ]]
}

run_test