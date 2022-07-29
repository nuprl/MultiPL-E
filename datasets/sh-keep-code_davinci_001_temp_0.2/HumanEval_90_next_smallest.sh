#!/bin/bash
# You are given a list of integers.
# Write a function next_smallest() that returns the 2nd smallest element of the list.
# Return None if there is no such element.
# next_smallest([1, 2, 3, 4, 5]) == 2
# next_smallest([5, 1, 4, 3, 2]) == 2
# next_smallest([]) == None
# next_smallest([1, 1]) == None
next_smallest() {
    local arr=("$@")
    local smallest=${arr[0]}
    local second_smallest=${arr[0]}
    for ((i=1; i<${#arr[@]}; i++)); do
        if [[ ${arr[i]} -lt $smallest ]]; then
            second_smallest=$smallest
            smallest=${arr[i]}
        elif [[ ${arr[i]} -lt $second_smallest && ${arr[i]} -ne $smallest ]]; then
            second_smallest=${arr[i]}
        fi
    done
    if [[ $second_smallest -eq $smallest ]]; then
        echo "None"
    else
        echo $second_smallest
    fi

}

candidate() {
    local res=$(next_smallest "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 3 4 5)
    x1=$(candidate "${x0[*]}")
    assert_equals 2 "${x1[*]}"

    declare -a x2=(5 1 4 3 2)
    x3=$(candidate "${x2[*]}")
    assert_equals 2 "${x3[*]}"

    declare -a x4=()
    x5=$(candidate "${x4[*]}")
    assert_equals None "${x5[*]}"

    declare -a x6=(1 1)
    x7=$(candidate "${x6[*]}")
    assert_equals None "${x7[*]}"

    declare -a x8=(1 1 1 1 0)
    x9=$(candidate "${x8[*]}")
    assert_equals 1 "${x9[*]}"

    declare -a x10=(1 1)
    x11=$(candidate "${x10[*]}")
    assert_equals None "${x11[*]}"

    declare -a x12=(-35 34 12 -45)
    x13=$(candidate "${x12[*]}")
    assert_equals -35 "${x13[*]}"

}