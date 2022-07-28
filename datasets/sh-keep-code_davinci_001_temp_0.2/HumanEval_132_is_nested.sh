#!/bin/bash
# Create a function that takes a string as input which contains only square brackets.
# The function should return True if and only if there is a valid subsequence of brackets 
# where at least one bracket in the subsequence is nested.
# is_nested('[[]]') ➞ True
# is_nested('[]]]]]]][[[[[]') ➞ False
# is_nested('[][]') ➞ False
# is_nested('[]') ➞ False
# is_nested('[[][]]') ➞ True
# is_nested('[[]][[') ➞ True
is_nested() {
    [[ $1 =~ \[\] ]] && echo "True" || echo "False"

}

candidate() {
    local res=$(is_nested "$@")
    echo $res
}

test() {
        x0=$(candidate '[[]]')
    assert_equals true "${x0[*]}"

        x1=$(candidate '[]]]]]]][[[[[]')
    assert_equals false "${x1[*]}"

        x2=$(candidate '[][]')
    assert_equals false "${x2[*]}"

        x3=$(candidate '[]')
    assert_equals false "${x3[*]}"

        x4=$(candidate '[[[[]]]]')
    assert_equals true "${x4[*]}"

        x5=$(candidate '[]]]]]]]]]]')
    assert_equals false "${x5[*]}"

        x6=$(candidate '[][][[]]')
    assert_equals true "${x6[*]}"

        x7=$(candidate '[[]')
    assert_equals false "${x7[*]}"

        x8=$(candidate '[]]')
    assert_equals false "${x8[*]}"

        x9=$(candidate '[[]][[')
    assert_equals true "${x9[*]}"

        x10=$(candidate '[[][]]')
    assert_equals true "${x10[*]}"

        x11=$(candidate '')
    assert_equals false "${x11[*]}"

        x12=$(candidate '[[[[[[[[')
    assert_equals false "${x12[*]}"

        x13=$(candidate ']]]]]]]]')
    assert_equals false "${x13[*]}"

}