#!/bin/bash
# sum_to_n is a function that sums numbers from 1 to n.
# >>> sum_to_n(30)
# 465
# >>> sum_to_n(100)
# 5050
# >>> sum_to_n(5)
# 15
# >>> sum_to_n(10)
# 55
# >>> sum_to_n(1)
# 1
sum_to_n() {
    local sum=0
    for i in $(seq 1 $1); do
        sum=$(($sum + $i))
    done
    echo $sum

}

candidate() {
    local res=$(sum_to_n "$@")
    echo $res
}

test() {
        x0=$(candidate 1)
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 6)
    assert_equals 21 "${x1[*]}"

        x2=$(candidate 11)
    assert_equals 66 "${x2[*]}"

        x3=$(candidate 30)
    assert_equals 465 "${x3[*]}"

        x4=$(candidate 100)
    assert_equals 5050 "${x4[*]}"

}