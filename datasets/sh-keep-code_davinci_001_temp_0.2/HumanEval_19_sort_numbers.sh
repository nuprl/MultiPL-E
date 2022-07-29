#!/bin/bash
# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
# >>> sort_numbers('three one five')
# 'one three five'
sort_numbers() {
echo 0

}

candidate() {
    sort_numbers "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate three) = three ]]
    [[ $(candidate "three five nine") = "three five nine" ]]
    [[ $(candidate "five zero four seven nine eight") = "zero four five seven eight nine" ]]
    [[ $(candidate "six five four three two one zero") = "zero one two three four five six" ]]
}

run_test