#!/bin/bash
# brackets is a string of "(" and ")".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("(")
# False
# >>> correct_bracketing("()")
# True
# >>> correct_bracketing("(()())")
# True
# >>> correct_bracketing(")(()")
# False
correct_bracketing() {
    local brackets="$1"
    local count=0
    for (( i=0; i<${#brackets}; i++ )); do
        case "${brackets:$i:1}" in
            "(" )
                (( count++ ))
                ;;
            ")" )
                (( count-- ))
                ;;
        esac
        if (( count < 0 )); then
            return 1
        fi
    done
    (( count == 0 ))

}

candidate() {
    local res=$(correct_bracketing "$@")
    echo $res
}

test() {
        x0=$(candidate "()")
    assert_equals true "${x0[*]}"

        x1=$(candidate "(()())")
    assert_equals true "${x1[*]}"

        x2=$(candidate "()()(()())()")
    assert_equals true "${x2[*]}"

        x3=$(candidate "()()((()()())())(()()(()))")
    assert_equals true "${x3[*]}"

        x4=$(candidate "((()())))")
    assert_equals false "${x4[*]}"

        x5=$(candidate ")(()")
    assert_equals false "${x5[*]}"

        x6=$(candidate "(")
    assert_equals false "${x6[*]}"

        x7=$(candidate "((((")
    assert_equals false "${x7[*]}"

        x8=$(candidate ")")
    assert_equals false "${x8[*]}"

        x9=$(candidate "(()")
    assert_equals false "${x9[*]}"

        x10=$(candidate "()()(()())())(()")
    assert_equals false "${x10[*]}"

        x11=$(candidate "()()(()())()))()")
    assert_equals false "${x11[*]}"

}