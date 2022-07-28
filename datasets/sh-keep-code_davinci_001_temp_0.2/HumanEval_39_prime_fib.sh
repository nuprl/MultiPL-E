#!/bin/bash
# prime_fib returns n-th number that is a Fibonacci number and it's also prime.
# >>> prime_fib(1)
# 2
# >>> prime_fib(2)
# 3
# >>> prime_fib(3)
# 5
# >>> prime_fib(4)
# 13
# >>> prime_fib(5)
# 89
prime_fib() {
    local n=$1
    local a=1
    local b=1
    local c=2
    local i=3
    while [[ $i -le $n ]]; do
        a=$b
        b=$c
        c=$((a + b))
        ((i++))
    done
    if [[ $((c % 2)) -eq 0 ]]; then
        c=$((c + 1))
    fi
    echo $c

}

candidate() {
    local res=$(prime_fib "$@")
    echo $res
}

test() {
        x0=$(candidate 1)
    assert_equals 2 "${x0[*]}"

        x1=$(candidate 2)
    assert_equals 3 "${x1[*]}"

        x2=$(candidate 3)
    assert_equals 5 "${x2[*]}"

        x3=$(candidate 4)
    assert_equals 13 "${x3[*]}"

        x4=$(candidate 5)
    assert_equals 89 "${x4[*]}"

        x5=$(candidate 6)
    assert_equals 233 "${x5[*]}"

        x6=$(candidate 7)
    assert_equals 1597 "${x6[*]}"

        x7=$(candidate 8)
    assert_equals 28657 "${x7[*]}"

        x8=$(candidate 9)
    assert_equals 514229 "${x8[*]}"

        x9=$(candidate 10)
    assert_equals 433494437 "${x9[*]}"

}