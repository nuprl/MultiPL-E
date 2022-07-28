#!/bin/bash
# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
# >>> sort_numbers('three one five')
# 'one three five'
sort_numbers() {
  local numbers=($(echo "$1" | tr ' ' '\n' | sort -n))
  echo "${numbers[*]}" | tr ' ' ' '

}

candidate() {
    local res=$(sort_numbers "$@")
    echo $res
}

test() {
        x0=$(candidate '')
    assert_equals '' "${x0[*]}"

        x1=$(candidate 'three')
    assert_equals 'three' "${x1[*]}"

        x2=$(candidate 'three five nine')
    assert_equals 'three five nine' "${x2[*]}"

        x3=$(candidate 'five zero four seven nine eight')
    assert_equals 'zero four five seven eight nine' "${x3[*]}"

        x4=$(candidate 'six five four three two one zero')
    assert_equals 'zero one two three four five six' "${x4[*]}"

}