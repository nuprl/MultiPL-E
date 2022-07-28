#!/bin/bash
# Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
# >>> fizz_buzz(50)
# 0
# >>> fizz_buzz(78)
# 2
# >>> fizz_buzz(79)
# 3
fizz_buzz() {
    local n=$1
    local count=0
    for ((i=1; i<n; i++)); do
        if [[ $((i%11)) -eq 0 ]] || [[ $((i%13)) -eq 0 ]]; then
            ((count++))
        fi
    done
    echo $count

}

candidate() {
    local res=$(fizz_buzz "$@")
    echo $res
}

test() {
        x0=$(candidate 50)
    assert_equals 0 "${x0[*]}"

        x1=$(candidate 78)
    assert_equals 2 "${x1[*]}"

        x2=$(candidate 79)
    assert_equals 3 "${x2[*]}"

        x3=$(candidate 100)
    assert_equals 3 "${x3[*]}"

        x4=$(candidate 200)
    assert_equals 6 "${x4[*]}"

        x5=$(candidate 4000)
    assert_equals 192 "${x5[*]}"

        x6=$(candidate 10000)
    assert_equals 639 "${x6[*]}"

        x7=$(candidate 100000)
    assert_equals 8026 "${x7[*]}"

}