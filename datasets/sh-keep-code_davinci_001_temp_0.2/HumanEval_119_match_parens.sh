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
match_parens() {
  local -a arr=("$@")
  local -i i=0
  local -i j=1
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
  local -i p=0
  local -i q=0


}

candidate() {
    local res=$(match_parens "$@")
    echo $res
}

test() {
    declare -a x0=('()(' ')')
    x1=$(candidate "${x0[*]}")
    assert_equals 'Yes' "${x1[*]}"

    declare -a x2=(')' ')')
    x3=$(candidate "${x2[*]}")
    assert_equals 'No' "${x3[*]}"

    declare -a x4=('(()(())' '())())')
    x5=$(candidate "${x4[*]}")
    assert_equals 'No' "${x5[*]}"

    declare -a x6=(')())' '(()()(')
    x7=$(candidate "${x6[*]}")
    assert_equals 'Yes' "${x7[*]}"

    declare -a x8=('(())))' '(()())((')
    x9=$(candidate "${x8[*]}")
    assert_equals 'Yes' "${x9[*]}"

    declare -a x10=('()' '())')
    x11=$(candidate "${x10[*]}")
    assert_equals 'No' "${x11[*]}"

    declare -a x12=('(()(' '()))()')
    x13=$(candidate "${x12[*]}")
    assert_equals 'Yes' "${x13[*]}"

    declare -a x14=('((((' '((())')
    x15=$(candidate "${x14[*]}")
    assert_equals 'No' "${x15[*]}"

    declare -a x16=(')(()' '(()(')
    x17=$(candidate "${x16[*]}")
    assert_equals 'No' "${x17[*]}"

    declare -a x18=(')(' ')(')
    x19=$(candidate "${x18[*]}")
    assert_equals 'No' "${x19[*]}"

    declare -a x20=('(' ')')
    x21=$(candidate "${x20[*]}")
    assert_equals 'Yes' "${x21[*]}"

    declare -a x22=(')' '(')
    x23=$(candidate "${x22[*]}")
    assert_equals 'Yes' "${x23[*]}"

}