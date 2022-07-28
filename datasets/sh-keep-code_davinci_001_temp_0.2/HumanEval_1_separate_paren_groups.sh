#!/bin/bash
# Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
# separate those group into separate strings and return the list of those.
# Separate groups are balanced (each open brace is properly closed) and not nested within each other
# Ignore any spaces in the input string.
# >>> separate_paren_groups('( ) (( )) (( )( ))')
# ['()', '(())', '(()())']
separate_paren_groups() {
    local input="$1"
    local output=()
    local stack=()
    local i=0
    local j=0
    local k=0
    local l=0
    local m=0
    local n=0
    local o=0
    local p=0
    local q=0
    local r=0
    local s=0
    local t=0
    local u=0
    local v=0
    local w=0
    local x=0
    local y=0
    local z=0
    local a=0
    local b=0
    local c=0
    local d=0
    local e=0
    local f=0
    local g=0
    local h=0
    local i=0
    local j=0
    local k=0
    local l=0
    local m=0
    local n=0
    local o=0
    local p=0
    local q=0
    local r=0
    local s=0
    local t=0
    local u=0
    local v=0
    local w=0
    local x=0
    local y=0
    local z=0
    local a=0
    local b=0
    local c=0
    local d=0
    local e=0
    local f=0
    local g=0
    local h=0
    local i=0
    local j=0
    local k=0
    local l=0
    local m=0
    local n=0
    local o=0
    local p=0
    local q=0
    local r=0
    local s=0
    local t=0
    local u=0
    local v=0
    local w=0
    local x=0
    local y=0
    local z=0
    local a=0
    local b=0
    local c=0
    local d=0
    local e=0
    local f=0
    local g=0
    local h=0
    local i=0
    local j=0

}

candidate() {
    local res=$(separate_paren_groups "$@")
    echo $res
}

test() {
    declare -a x1=('(()())' '((()))' '()' '((())()())')
        x0=$(candidate '(()()) ((())) () ((())()())')
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=('()' '(())' '((()))' '(((())))')
        x2=$(candidate '() (()) ((())) (((())))')
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=('(()(())((())))')
        x4=$(candidate '(()(())((())))')
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=('()' '(())' '(()())')
        x6=$(candidate '( ) (( )) (( )( ))')
    assert_equals "${x7[*]}" "${x6[*]}"

}