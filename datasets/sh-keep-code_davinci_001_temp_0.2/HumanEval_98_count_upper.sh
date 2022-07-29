#!/bin/bash
# Given a string s, count the number of uppercase vowels in even indices.
# For example:
# count_upper('aBCdEf') returns 1
# count_upper('abcdefg') returns 0
# count_upper('dBBE') returns 0
count_upper() {
echo 0

}

candidate() {
    count_upper "$@"
}

run_test() {
    [[ $(candidate aBCdEf) = 1 ]]
    [[ $(candidate abcdefg) = 0 ]]
    [[ $(candidate dBBE) = 0 ]]
    [[ $(candidate B) = 0 ]]
    [[ $(candidate U) = 1 ]]
    [[ $(candidate "") = 0 ]]
    [[ $(candidate EEEE) = 2 ]]
}

run_test