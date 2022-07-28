#!/bin/bash
# Given an integer. return a tuple that has the number of even and odd digits respectively.
# Example:
# even_odd_count(-12) ==> (1, 1)
# even_odd_count(123) ==> (1, 2)
even_odd_count() {
    local even=0
    local odd=0
    local num=$1
    while [[ $num -gt 0 ]]; do
        local rem=$((num % 10))
        if [[ $rem -eq 0 ]]; then
            even=$((even + 1))
        else
            odd=$((odd + 1))
        fi
        num=$((num / 10))
    done
    echo "$even $odd"

}

candidate() {
    local res=$(even_odd_count "$@")
    echo $res
}

test() {
    declare -a x1=(0 1)
        x0=$(candidate 7)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(1 1)
        x2=$(candidate -78)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(2 2)
        x4=$(candidate 3452)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(3 3)
        x6=$(candidate 346211)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=(3 3)
        x8=$(candidate -345821)
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=(1 0)
        x10=$(candidate -2)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=(2 3)
        x12=$(candidate -45347)
    assert_equals "${x13[*]}" "${x12[*]}"

    declare -a x15=(1 0)
        x14=$(candidate 0)
    assert_equals "${x15[*]}" "${x14[*]}"

}