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
echo 0

}

candidate() {
    make_palindrome "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate x) = x ]]
    [[ $(candidate xyz) = xyzyx ]]
    [[ $(candidate xyx) = xyx ]]
    [[ $(candidate jerry) = jerryrrej ]]
}

run_test