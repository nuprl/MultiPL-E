#!/bin/bash
# Task
# Write a function that takes a string as input and returns the sum of the upper characters only'
# ASCII codes.
# Examples:
# digitSum("") => 0
# digitSum("abAB") => 131
# digitSum("abcCd") => 67
# digitSum("helloE") => 69
# digitSum("woArBld") => 131
# digitSum("aAaaaXa") => 153
digitSum() {
echo 0

}

candidate() {
    digitSum "$@"
}

run_test() {
    [[ $(candidate "") = 0 ]]
    [[ $(candidate abAB) = 131 ]]
    [[ $(candidate abcCd) = 67 ]]
    [[ $(candidate helloE) = 69 ]]
    [[ $(candidate woArBld) = 131 ]]
    [[ $(candidate aAaaaXa) = 153 ]]
    [[ $(candidate " How are yOu?") = 151 ]]
    [[ $(candidate "You arE Very Smart") = 327 ]]
}

run_test