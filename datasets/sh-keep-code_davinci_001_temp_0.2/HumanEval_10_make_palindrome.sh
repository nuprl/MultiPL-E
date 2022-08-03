#!/bin/bash
# Find the shortest palindrome that begins with a supplied string.
# Algorithm idea is simple:
# - Find the longest postfix of supplied string that is a palindrome.
# - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
# >>> make_palindrome('')
# ''
# >>> make_palindrome('cat')
# 'catac'
# >>> make_palindrome('cata')
# 'catac'
#
# $1 is a string
make_palindrome() {
    local str="$1"
    local len=${#str}
    local i=0
    local j=0
    local max=0
    local max_i=0
    local max_j=0
    local palindrome=''
    local palindrome_len=0
    local palindrome_i=0
    local palindrome_j=0
    local palindrome_max=0
    local palindrome_max_i=0
    local palindrome_max_j=0
    local palindrome_max_len=0
    local palindrome_max_str=''
    local palindrome_max_str_len=0
    local palindrome_max_str_i=0
    local palindrome_max_str_j=0
    local palindrome_max_str_max=0
    local palindrome_max_str_max_i=0
    local palindrome_max_str_max_j=0
    local palindrome_max_str_max_len=0
    local palindrome_max_str_max_str=''
    local palindrome_max_str_max_str_len=0
    local palindrome_max_str_max_str_i=0
    local palindrome_max_str_max_str_j=0
    local palindrome_max_str_max_str_max=0
    local palindrome_max_str_max_str_max_i=0
    local palindrome_max_str_max_str_max_j=0
    local palindrome_max_str_max_str_max_len=0
    local palindrome_max_str_max_str_max_str=''
    local palindrome_max_str_max_str_max_str_len=0
    local palindrome_max_str_max_str_max_str_i=0
    local palindrome_max_str_max_str_max_str_j=0
    local palindrome_max_str_max_str_

}

candidate() {
    make_palindrome "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "x") = "x" ]]
    [[ $(candidate "xyz") = "xyzyx" ]]
    [[ $(candidate "xyx") = "xyx" ]]
    [[ $(candidate "jerry") = "jerryrrej" ]]
}

run_test