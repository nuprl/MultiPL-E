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
    local result=()
    local depth=0
    local start=0
    local end=0
    local i=0
    local len=${#1}
    local char=''
    local is_open=0
    local is_closed=0
    local is_balanced=0
    local is_nested=0
    local is_open_paren=0
    local is_closed_paren=0
    local is_balanced_paren=0
    local is_nested_paren=0
    local is_balanced_group=0
    local is_nested_group=0
    local is_open_group=0
    local is_closed_group=0
    local is_open_paren_group=0
    local is_closed_paren_group=0
    local is_balanced_paren_group=0
    local is_nested_paren_group=0
    local is_balanced_group_group=0
    local is_nested_group_group=0
    local is_open_group_group=0
    local is_closed_group_group=0
    local is_open_paren_group_group=0
    local is_closed_paren_group_group=0
    local is_balanced_paren_group_group=0
    local is_nested_paren_group_group=0
    local is_balanced_group_group_group=0
    local is_nested_group_group_group=0
    local is_open_group_group_group=0
    local is_closed_group_group_group=0
    local is_open_paren_group_group_group=0
    local is_closed_paren_group_group_group=0
    local is_balanced_paren_group_group_group=0
    local is_nested_paren_group_group_group=0
    local is_balanced_group_group_group_group=0
    local is_nested_group_group_group_group=0
    local is_open_group_group_group_group=0
    local is_closed_group_group_group_group

}

candidate() {
    separate_paren_groups "$@"
}

set -e
run_test() {
    [[ $(candidate "(()()) ((())) () ((())()())") = "(()()) ((())) () ((())()())" ]]
    [[ $(candidate "() (()) ((())) (((())))") = "() (()) ((())) (((())))" ]]
    [[ $(candidate "(()(())((())))") = "(()(())((())))" ]]
    [[ $(candidate "( ) (( )) (( )( ))") = "() (()) (()())" ]]
}

run_test