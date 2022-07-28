#!/bin/bash
# Return 2^n modulo p (be aware of numerics).
# >>> modp(3, 5)
# 3
# >>> modp(1101, 101)
# 2
# >>> modp(0, 101)
# 1
# >>> modp(3, 11)
# 8
# >>> modp(100, 101)
# 1
modp() {
    local n=$1 p=$2
    local r=1
    while (( n > 0 )); do
        (( n & 1 )) && r=$(( r * p ))
        p=$(( p * p ))
        n=$(( n >> 1 ))
    done
    echo $r

}

candidate() {
    local res=$(modp "$@")
    echo $res
}

test() {
        x0=$(candidate 3 5)
    assert_equals 3 "${x0[*]}"

        x1=$(candidate 1101 101)
    assert_equals 2 "${x1[*]}"

        x2=$(candidate 0 101)
    assert_equals 1 "${x2[*]}"

        x3=$(candidate 3 11)
    assert_equals 8 "${x3[*]}"

        x4=$(candidate 100 101)
    assert_equals 1 "${x4[*]}"

        x5=$(candidate 30 5)
    assert_equals 4 "${x5[*]}"

        x6=$(candidate 31 5)
    assert_equals 3 "${x6[*]}"

}