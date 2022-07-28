#!/bin/bash
# Return n-th Fibonacci number.
# >>> fib(10)
# 55
# >>> fib(1)
# 1
# >>> fib(8)
# 21
fib() {
    local n=$1
    local a=0
    local b=1
    local c=1
    local i=2
    while [ $i -lt $n ]; do
        c=$((a + b))
        a=$b
        b=$c
        i=$((i + 1))
    done
    echo $c

}

candidate() {
    local res=$(fib "$@")
    echo $res
}

test() {
        x0=$(candidate 10)
    assert_equals 55 "${x0[*]}"

        x1=$(candidate 1)
    assert_equals 1 "${x1[*]}"

        x2=$(candidate 8)
    assert_equals 21 "${x2[*]}"

        x3=$(candidate 11)
    assert_equals 89 "${x3[*]}"

        x4=$(candidate 12)
    assert_equals 144 "${x4[*]}"

}