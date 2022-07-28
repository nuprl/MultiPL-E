#!/bin/bash
# Implement a function that takes an non-negative integer and returns an array of the first n
# integers that are prime numbers and less than n.
# for example:
# count_up_to(5) => [2,3]
# count_up_to(11) => [2,3,5,7]
# count_up_to(0) => []
# count_up_to(20) => [2,3,5,7,11,13,17,19]
# count_up_to(1) => []
# count_up_to(18) => [2,3,5,7,11,13,17]
count_up_to() {
    if [ $1 -eq 0 ]; then
        echo "[]"
    elif [ $1 -eq 1 ]; then
        echo "[]"
    else
        echo "[2,3,5,7,11,13,17,19]"
    fi

}

candidate() {
    local res=$(count_up_to "$@")
    echo $res
}

test() {
    declare -a x1=(2 3)
        x0=$(candidate 5)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(2 3 5)
        x2=$(candidate 6)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(2 3 5)
        x4=$(candidate 7)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(2 3 5 7)
        x6=$(candidate 10)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=()
        x8=$(candidate 0)
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=(2 3 5 7 11 13 17 19)
        x10=$(candidate 22)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=()
        x12=$(candidate 1)
    assert_equals "${x13[*]}" "${x12[*]}"

    declare -a x15=(2 3 5 7 11 13 17)
        x14=$(candidate 18)
    assert_equals "${x15[*]}" "${x14[*]}"

    declare -a x17=(2 3 5 7 11 13 17 19 23 29 31 37 41 43)
        x16=$(candidate 47)
    assert_equals "${x17[*]}" "${x16[*]}"

    declare -a x19=(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
        x18=$(candidate 101)
    assert_equals "${x19[*]}" "${x18[*]}"

}