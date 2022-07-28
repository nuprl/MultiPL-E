#!/bin/bash
# Return sorted unique elements in a list
# >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [0, 2, 3, 5, 9, 123]
unique() {
    echo "$@" | tr ' ' '\n' | sort -u | tr '\n' ' '

}

candidate() {
    local res=$(unique "$@")
    echo $res
}

test() {
    declare -a x2=(0 2 3 5 9 123)
    declare -a x0=(5 3 5 2 3 3 9 0 123)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

}