#!/bin/bash
# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
parse_nested_parens() {
    local max_depth=0
    local depth=0
    local result=()
    for (( i=0; i<${#1}; i++ )); do
        if [[ ${1:$i:1} == '(' ]]; then
            (( depth++ ))
            if (( depth > max_depth )); then
                max_depth=$depth
            fi
        elif [[ ${1:$i:1} == ')' ]]; then
            (( depth-- ))
        fi
    done
    for (( i=0; i<${#1}; i++ )); do
        if [[ ${1:$i:1} == '(' ]]; then
            (( depth++ ))
            if (( depth == max_depth )); then
                result+=($i)
            fi
        elif [[ ${1:$i:1} == ')' ]]; then
            (( depth-- ))
        fi
    done
    echo "${result[@]}"

}

candidate() {
    local res=$(parse_nested_parens "$@")
    echo $res
}

test() {
    declare -a x1=(2 3 1 3)
        x0=$(candidate "(()()) ((())) () ((())()())")
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(1 2 3 4)
        x2=$(candidate "() (()) ((())) (((())))")
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(4)
        x4=$(candidate "(()(())((())))")
    assert_equals "${x5[*]}" "${x4[*]}"

}