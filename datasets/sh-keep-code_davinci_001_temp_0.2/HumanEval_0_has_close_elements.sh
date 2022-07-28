#!/bin/bash
# Check if in given list of numbers, are any two numbers closer to each other than
# given threshold.
# >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
# False
# >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
# True
has_close_elements() {
    local -r numbers=("$@")
    local -r threshold=$1
    local -r size=${#numbers[@]}
    local -r min=${numbers[0]}
    local -r max=${numbers[0]}
    local -r min_index=0
    local -r max_index=0
    local -r min_index_distance=0
    local -r max_index_distance=0
    local -r min_index_distance_sum=0
    local -r max_index_distance_sum=0
    local -r min_index_distance_sum_index=0
    local -r max_index_distance_sum_index=0
    local -r min_index_distance_sum_index_distance=0
    local -r max_index_distance_sum_index_distance=0
    local -r min_index_distance_sum_index_distance_sum=0
    local -r max_index_distance_sum_index_distance_sum=0
    local -r min_index_distance_sum_index_distance_sum_index=0
    local -r max_index_distance_sum_index_distance_sum_index=0
    local -r min_index_distance_sum_index_distance_sum_index_distance=0
    local -r max_index_distance_sum_index_distance_sum_index_distance=0
    local -r min_index_distance_sum_index_distance_sum_index_distance_sum=0
    local -r max_index_distance_sum_index_distance_sum_index_distance_sum=0
    local -r min_index_distance_sum_index_distance_sum_index_distance_sum_index=0
    local -r max_index_distance_sum_index_distance_sum_index_distance_sum_index=0
    local -r min_index_distance_sum_index_distance_sum_index_distance_sum_index_distance=0
    local -r max_index_distance_sum_index_distance_sum_index_distance_sum_index_distance=0


}

candidate() {
    local res=$(has_close_elements "$@")
    echo $res
}

test() {
    declare -a x0=(1.0 2.0 3.9 4.0 5.0 2.2)
    x1=$(candidate "${x0[*]}" 0.3)
    assert_equals true "${x1[*]}"

    declare -a x2=(1.0 2.0 3.9 4.0 5.0 2.2)
    x3=$(candidate "${x2[*]}" 0.05)
    assert_equals false "${x3[*]}"

    declare -a x4=(1.0 2.0 5.9 4.0 5.0)
    x5=$(candidate "${x4[*]}" 0.95)
    assert_equals true "${x5[*]}"

    declare -a x6=(1.0 2.0 5.9 4.0 5.0)
    x7=$(candidate "${x6[*]}" 0.8)
    assert_equals false "${x7[*]}"

    declare -a x8=(1.0 2.0 3.0 4.0 5.0 2.0)
    x9=$(candidate "${x8[*]}" 0.1)
    assert_equals true "${x9[*]}"

    declare -a x10=(1.1 2.2 3.1 4.1 5.1)
    x11=$(candidate "${x10[*]}" 1.0)
    assert_equals true "${x11[*]}"

    declare -a x12=(1.1 2.2 3.1 4.1 5.1)
    x13=$(candidate "${x12[*]}" 0.5)
    assert_equals false "${x13[*]}"

}