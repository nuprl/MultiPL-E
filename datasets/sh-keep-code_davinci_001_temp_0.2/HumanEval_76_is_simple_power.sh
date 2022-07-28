#!/bin/bash
# Your task is to write a function that returns true if a number x is a simple
# power of n and false in other cases.
# x is a simple power of n if n**int=x
# For example:
# is_simple_power(1, 4) => true
# is_simple_power(2, 2) => true
# is_simple_power(8, 2) => true
# is_simple_power(3, 2) => false
# is_simple_power(3, 1) => false
# is_simple_power(5, 3) => false
is_simple_power() {
    local x=$1
    local n=$2
    local i=0
    while [ $((x%n)) -eq 0 ]
    do
        x=$((x/n))
        i=$((i+1))
    done
    if [ $i -eq 1 ]
    then
        echo true
    else
        echo false
    fi

}

candidate() {
    local res=$(is_simple_power "$@")
    echo $res
}

test() {
        x0=$(candidate 16 2)
    assert_equals true "${x0[*]}"

        x1=$(candidate 143214 16)
    assert_equals false "${x1[*]}"

        x2=$(candidate 4 2)
    assert_equals true "${x2[*]}"

        x3=$(candidate 9 3)
    assert_equals true "${x3[*]}"

        x4=$(candidate 16 4)
    assert_equals true "${x4[*]}"

        x5=$(candidate 24 2)
    assert_equals false "${x5[*]}"

        x6=$(candidate 128 4)
    assert_equals false "${x6[*]}"

        x7=$(candidate 12 6)
    assert_equals false "${x7[*]}"

        x8=$(candidate 1 1)
    assert_equals true "${x8[*]}"

        x9=$(candidate 1 12)
    assert_equals true "${x9[*]}"

}