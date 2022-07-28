#!/bin/bash
# You are given a positive integer n. You have to create an integer array a of length n.
# For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
# Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
# and a[i] + a[j] + a[k] is a multiple of 3.
# Example :
# Input: n = 5
# Output: 1
# Explanation: 
# a = [1, 3, 7, 13, 21]
# The only valid triple is (1, 7, 13).
get_max_triples() {
    local n=$1
    local max_triples=0
    local i=1
    local j=1
    local k=1
    while [ $i -le $((n - 2)) ]; do
        j=$((i + 1))
        while [ $j -le $((n - 1)) ]; do
            k=$((j + 1))
            while [ $k -le $n ]; do
                local sum=$((a[i] + a[j] + a[k]))
                if [ $((sum % 3)) -eq 0 ]; then
                    local triples=$((1 + max_triples))
                    if [ $triples -gt $max_triples ]; then
                        max_triples=$triples
                    fi
                fi
                k=$((k + 1))
            done
            j=$((j + 1))
        done
        i=$((i + 1))
    done
    echo $max_triples

}

candidate() {
    local res=$(get_max_triples "$@")
    echo $res
}

test() {
        x0=$(candidate 5)
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 6)
    assert_equals 4 "${x1[*]}"

        x2=$(candidate 10)
    assert_equals 36 "${x2[*]}"

        x3=$(candidate 100)
    assert_equals 53361 "${x3[*]}"

}