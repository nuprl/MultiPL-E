#!/bin/bash
# Return true if a given number is prime, and false otherwise.
# >>> is_prime(6)
# False
# >>> is_prime(101)
# True
# >>> is_prime(11)
# True
# >>> is_prime(13441)
# True
# >>> is_prime(61)
# True
# >>> is_prime(4)
# False
# >>> is_prime(1)
# False
is_prime() {
    local num=$1
    if [ $num -eq 1 ]; then
        return 1
    fi
    for ((i=2; i<=$num/2; i++)); do
        if [ $(($num%$i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0

}

candidate() {
    local res=$(is_prime "$@")
    echo $res
}

test() {
        x0=$(candidate 6)
    assert_equals false "${x0[*]}"

        x1=$(candidate 101)
    assert_equals true "${x1[*]}"

        x2=$(candidate 11)
    assert_equals true "${x2[*]}"

        x3=$(candidate 13441)
    assert_equals true "${x3[*]}"

        x4=$(candidate 61)
    assert_equals true "${x4[*]}"

        x5=$(candidate 4)
    assert_equals false "${x5[*]}"

        x6=$(candidate 1)
    assert_equals false "${x6[*]}"

        x7=$(candidate 5)
    assert_equals true "${x7[*]}"

        x8=$(candidate 11)
    assert_equals true "${x8[*]}"

        x9=$(candidate 17)
    assert_equals true "${x9[*]}"

        x10=$(candidate 85)
    assert_equals false "${x10[*]}"

        x11=$(candidate 77)
    assert_equals false "${x11[*]}"

        x12=$(candidate 255379)
    assert_equals false "${x12[*]}"

}