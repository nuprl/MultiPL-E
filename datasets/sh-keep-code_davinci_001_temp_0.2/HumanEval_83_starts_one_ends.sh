#!/bin/bash
# Given a positive integer n, return the count of the numbers of n-digit
# positive integers that start or end with 1.
starts_one_ends() {
    local n=$1
    local count=0
    for i in $(seq 1 $n); do
        local start=$(echo $i | sed 's/^0*//')
        local end=$(echo $i | sed 's/0*$//')
        if [ $start -eq 1 ]; then
            count=$((count + 1))
        fi
        if [ $end -eq 1 ]; then
            count=$((count + 1))
        fi
    done
    echo $count

}

candidate() {
    local res=$(starts_one_ends "$@")
    echo $res
}

test() {
        x0=$(candidate 1)
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 2)
    assert_equals 18 "${x1[*]}"

        x2=$(candidate 3)
    assert_equals 180 "${x2[*]}"

        x3=$(candidate 4)
    assert_equals 1800 "${x3[*]}"

        x4=$(candidate 5)
    assert_equals 18000 "${x4[*]}"

}