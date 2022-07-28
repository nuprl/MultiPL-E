#!/bin/bash
# From a supplied list of numbers (of length at least two) select and return two that are the closest to each
# other and return them in order (smaller number, larger number).
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
# (2.0, 2.2)
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
# (2.0, 2.0)
find_closest_elements() {
    local -a numbers=($@)
    local -i i=0
    local -i j=1
    local -i min_diff=9999999999
    local -i diff=0
    local -i min_i=0
    local -i min_j=1
    local -i min_diff_i=0
    local -i min_diff_j=1
    local -i min_diff_diff=9999999999
    local -i min_diff_diff_i=0
    local -i min_diff_diff_j=1
    local -i min_diff_diff_diff=9999999999
    local -i min_diff_diff_diff_i=0
    local -i min_diff_diff_diff_j=1
    local -i min_diff_diff_diff_diff=9999999999
    local -i min_diff_diff_diff_diff_i=0
    local -i min_diff_diff_diff_diff_j=1
    local -i min_diff_diff_diff_diff_diff=9999999999
    local -i min_diff_diff_diff_diff_diff_i=0
    local -i min_diff_diff_diff_diff_diff_j=1
    local -i min_diff_diff_diff_diff_diff_diff=9999999999
    local -i min_diff_diff_diff_diff_diff_diff_i=0
    local -i min_diff_diff_diff_diff_diff_diff_j=1
    local -i min_diff_diff_diff_diff_diff_diff_diff=9999999999
    local -i min_diff_diff_diff_diff_diff_diff_diff_i=0
    local -i min_diff_diff_diff_diff_diff_diff_diff_j=1
    local -i min_diff_diff_diff_diff_diff_diff_diff_diff=9999999999
    local -i min_diff_diff_diff_diff_diff_diff_diff_diff_i=0
    local -i min_diff_diff_diff_diff_diff

}

candidate() {
    local res=$(find_closest_elements "$@")
    echo $res
}

test() {
    declare -a x2=(3.9 4.0)
    declare -a x0=(1.0 2.0 3.9 4.0 5.0 2.2)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(5.0 5.9)
    declare -a x3=(1.0 2.0 5.9 4.0 5.0)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(2.0 2.2)
    declare -a x6=(1.0 2.0 3.0 4.0 5.0 2.2)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(2.0 2.0)
    declare -a x9=(1.0 2.0 3.0 4.0 5.0 2.0)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(2.2 3.1)
    declare -a x12=(1.1 2.2 3.1 4.1 5.1)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

}