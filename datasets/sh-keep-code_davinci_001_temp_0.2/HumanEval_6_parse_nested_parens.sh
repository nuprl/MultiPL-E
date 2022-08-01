#!/bin/bash
# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
#
# $1 is a string
parse_nested_parens() {
    local -a parens
    local -i level=0
    local -i max=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -

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