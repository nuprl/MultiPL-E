#!/bin/bash
# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
#
# $1 is a string
parse_nested_parens() {
echo 0

}

candidate() {
    parse_nested_parens "$@"
}

run_test() {
    [[ $(candidate "(()()) ((())) () ((())()())") = "2 3 1 3" ]]
    [[ $(candidate "() (()) ((())) (((())))") = "1 2 3 4" ]]
    [[ $(candidate "(()(())((())))") = "4" ]]
}

run_test