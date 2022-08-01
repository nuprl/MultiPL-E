#!/bin/bash
# From a supplied list of numbers (of length at least two) select and return two that are the closest to each
# other and return them in order (smaller number, larger number).
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
# (2.0, 2.2)
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
# (2.0, 2.0)
#
# $1 is a space-separated list
find_closest_elements() {
    local -a numbers=($1)
    local -i smallest_difference=999999999
    local -i smallest_difference_index=0
    local -i second_smallest_difference=999999999
    local -i second_smallest_difference_index=0
    local -i i=0
    for number in "${numbers[@]}"; do
        local -i difference=$((number - numbers[smallest_difference_index]))
        if ((difference < smallest_difference)); then
            second_smallest_difference=$smallest_difference
            second_smallest_difference_index=$smallest_difference_index
            smallest_difference=$difference
            smallest_difference_index=$i
        elif ((difference < second_smallest_difference)); then
            second_smallest_difference=$difference
            second_smallest_difference_index=$i
        fi
        ((i++))
    done
    printf "%s %s\n" "${numbers[smallest_difference_index]}" "${numbers[second_smallest_difference_index]}"

}

candidate() {
    find_closest_elements "$@"
}

set -e
run_test() {
    [[ $(candidate "1.0 2.0 3.9 4.0 5.0 2.2") = "3.9 4.0" ]]
    [[ $(candidate "1.0 2.0 5.9 4.0 5.0") = "5.0 5.9" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0 2.2") = "2.0 2.2" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0 2.0") = "2.0 2.0" ]]
    [[ $(candidate "1.1 2.2 3.1 4.1 5.1") = "2.2 3.1" ]]
}

run_test