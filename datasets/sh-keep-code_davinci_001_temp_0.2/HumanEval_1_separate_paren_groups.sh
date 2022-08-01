#!/bin/bash
# Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
# separate those group into separate strings and return the list of those.
# Separate groups are balanced (each open brace is properly closed) and not nested within each other
# Ignore any spaces in the input string.
# >>> separate_paren_groups('( ) (( )) (( )( ))')
# ['()', '(())', '(()())']
#
# $1 is a string
separate_paren_groups() {
echo 0

}

candidate() {
    separate_paren_groups "$@"
}

run_test() {
    [[ $(candidate "(()()) ((())) () ((())()())") = "(()())\n((()))\n()\n((())()())" ]]
    [[ $(candidate "() (()) ((())) (((())))") = "()\n(())\n((()))\n(((())))" ]]
    [[ $(candidate "(()(())((())))") = "(()(())((())))" ]]
    [[ $(candidate "( ) (( )) (( )( ))") = "()\n(())\n(()())" ]]
}

run_test