#!/bin/bash
# Out of list of strings, return the longest one. Return the first one in case of multiple
# strings of the same length. Return None in case the input list is empty.
# >>> longest([])
# >>> longest(['a', 'b', 'c'])
# 'a'
# >>> longest(['a', 'bb', 'ccc'])
# 'ccc'
longest() {
    local list=("$@")
    local max_length=0
    local max_string
    for string in "${list[@]}"; do
        local length=${#string}
        if (( length > max_length )); then
            max_length=$length
            max_string=$string
        fi
    done
    echo "$max_string"

}

candidate() {
    local res=$(longest "$@")
    echo $res
}

test() {
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals None "${x1[*]}"

    declare -a x2=("x" "y" "z")
    x3=$(candidate "${x2[*]}")
    assert_equals "x" "${x3[*]}"

    declare -a x4=("x" "yyy" "zzzz" "www" "kkkk" "abc")
    x5=$(candidate "${x4[*]}")
    assert_equals "zzzz" "${x5[*]}"

}