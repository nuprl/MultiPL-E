#!/bin/bash
# Return the largest prime factor of n. Assume n > 1 and is not a prime.
# >>> largest_prime_factor(13195)
# 29
# >>> largest_prime_factor(2048)
# 2
largest_prime_factor() {
    local n=$1
    local i=2
    while [ $i -lt $n ]; do
        if [ $(($n % $i)) -eq 0 ]; then
            n=$(($n / $i))
            i=2
        else
            i=$(($i + 1))
        fi
    done
    echo $n

}

candidate() {
    local res=$(largest_prime_factor "$@")
    echo $res
}

test() {
        x0=$(candidate 15)
    assert_equals 5 "${x0[*]}"

        x1=$(candidate 27)
    assert_equals 3 "${x1[*]}"

        x2=$(candidate 63)
    assert_equals 7 "${x2[*]}"

        x3=$(candidate 330)
    assert_equals 11 "${x3[*]}"

        x4=$(candidate 13195)
    assert_equals 29 "${x4[*]}"

}