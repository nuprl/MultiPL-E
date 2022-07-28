#!/bin/bash
# xs represent coefficients of a polynomial.
# xs[0] + xs[1] * x + xs[2] * x^2 + ....
# Return derivative of this polynomial in the same form.
# >>> derivative([3, 1, 2, 4, 5])
# [1, 4, 12, 20]
# >>> derivative([1, 2, 3])
# [2, 6]
derivative() {
    local xs=($@)
    local i=0
    local j=1
    local result=()
    while [ $i -lt ${#xs[@]} ]; do
        result[$i]=$j
        i=$((i+1))
        j=$((j*xs[$i]))
    done
    echo ${result[@]}

}

candidate() {
    local res=$(derivative "$@")
    echo $res
}

test() {
    declare -a x2=(1 4 12 20)
    declare -a x0=(3 1 2 4 5)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(2 6)
    declare -a x3=(1 2 3)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(2 2)
    declare -a x6=(3 2 1)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(2 2 0 16)
    declare -a x9=(3 2 1 0 4)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=()
    declare -a x12=(1)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

}