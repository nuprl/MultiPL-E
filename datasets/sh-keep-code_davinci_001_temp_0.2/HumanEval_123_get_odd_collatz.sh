#!/bin/bash
# Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
# The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
# as follows: start with any positive integer n. Then each term is obtained from the 
# previous term as follows: if the previous term is even, the next term is one half of 
# the previous term. If the previous term is odd, the next term is 3 times the previous
# term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
# Note: 
# 1. Collatz(1) is [1].
# 2. returned list sorted in increasing order.
# For example:
# get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
get_odd_collatz() {
    local n=$1
    local res=()
    while [ $n -ne 1 ]; do
        if [ $((n%2)) -eq 0 ]; then
            n=$((n/2))
        else
            n=$((3*n+1))
        fi
        res+=($n)
    done
    echo ${res[@]}

}

candidate() {
    local res=$(get_odd_collatz "$@")
    echo $res
}

test() {
    declare -a x1=(1 5 7 11 13 17)
        x0=$(candidate 14)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(1 5)
        x2=$(candidate 5)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(1 3 5)
        x4=$(candidate 12)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(1)
        x6=$(candidate 1)
    assert_equals "${x7[*]}" "${x6[*]}"

}