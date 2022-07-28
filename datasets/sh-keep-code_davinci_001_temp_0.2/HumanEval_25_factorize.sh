#!/bin/bash
# Return list of prime factors of given integer in the order from smallest to largest.
# Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
# Input number should be equal to the product of all factors
# >>> factorize(8)
# [2, 2, 2]
# >>> factorize(25)
# [5, 5]
# >>> factorize(70)
# [2, 5, 7]
factorize() {
    local n=$1
    local factors=()
    local factor=2
    while [ $n -gt 1 ]; do
        if [ $(($n % $factor)) -eq 0 ]; then
            n=$(($n / $factor))
            factors+=($factor)
        else
            factor=$(($factor + 1))
        fi
    done
    echo ${factors[@]}

}

candidate() {
    local res=$(factorize "$@")
    echo $res
}

test() {
    declare -a x1=(2)
        x0=$(candidate 2)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(2 2)
        x2=$(candidate 4)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(2 2 2)
        x4=$(candidate 8)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(3 19)
        x6=$(candidate 57)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=(3 3 19 19)
        x8=$(candidate 3249)
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=(3 3 3 19 19 19)
        x10=$(candidate 185193)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=(3 19 19 19)
        x12=$(candidate 20577)
    assert_equals "${x13[*]}" "${x12[*]}"

    declare -a x15=(2 3 3)
        x14=$(candidate 18)
    assert_equals "${x15[*]}" "${x14[*]}"

}