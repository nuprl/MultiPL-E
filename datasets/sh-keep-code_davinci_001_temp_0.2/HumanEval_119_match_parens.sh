#!/bin/bash
# You are given a list of two strings, both strings consist of open
# parentheses '(' or close parentheses ')' only.
# Your job is to check if it is possible to concatenate the two strings in
# some order, that the resulting string will be good.
# A string S is considered to be good if and only if all parentheses in S
# are balanced. For example: the string '(())()' is good, while the string
# '())' is not.
# Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
# Examples:
# match_parens(['()(', ')']) == 'Yes'
# match_parens([')', ')']) == 'No'
#
# $1 is a space-separated list
match_parens() {
  local result=''
  local parens=()
  local parens_count=0
  local parens_count_max=0
  local parens_count_min=0
  local parens_count_diff=0
  local parens_count_diff_max=0
  local parens_count_diff_min=0
  local parens_count_diff_diff=0
  local parens_count_diff_diff_max=0
  local parens_count_diff_diff_min=0
  local parens_count_diff_diff_diff=0
  local parens_count_diff_diff_diff_max=0
  local parens_count_diff_diff_diff_min=0
  local parens_count_diff_diff_diff_diff=0
  local parens_count_diff_diff_diff_diff_max=0
  local parens_count_diff_diff_diff_diff_min=0
  local parens_count_diff_diff_diff_diff_diff=0
  local parens_count_diff_diff_diff_diff_diff_max=0
  local parens_count_diff_diff_diff_diff_diff_min=0
  local parens_count_diff_diff_diff_diff_diff_diff=0
  local parens_count_diff_diff_diff_diff_diff_diff_max=0
  local parens_count_diff_diff_diff_diff_diff_diff_min=0
  local parens_count_diff_diff_diff_diff_diff_diff_diff=0
  local parens_count_diff_diff_diff_diff_diff_diff_diff_max=0
  local parens_count_diff_diff_diff_diff_diff_diff_diff_min=0
  local parens_count_diff_diff_diff_diff_diff_diff_diff_diff=0
  local parens_count_diff_diff_diff_diff_diff_diff

}

candidate() {
    match_parens "$@"
}

set -e
run_test() {
    [[ $(candidate "()( )") = "Yes" ]]
    [[ $(candidate ") )") = "No" ]]
    [[ $(candidate "(()(()) ())())") = "No" ]]
    [[ $(candidate ")()) (()()(") = "Yes" ]]
    [[ $(candidate "(()))) (()())((") = "Yes" ]]
    [[ $(candidate "() ())") = "No" ]]
    [[ $(candidate "(()( ()))()") = "Yes" ]]
    [[ $(candidate "(((( ((())") = "No" ]]
    [[ $(candidate ")(() (()(") = "No" ]]
    [[ $(candidate ")( )(") = "No" ]]
    [[ $(candidate "( )") = "Yes" ]]
    [[ $(candidate ") (") = "Yes" ]]
}

run_test