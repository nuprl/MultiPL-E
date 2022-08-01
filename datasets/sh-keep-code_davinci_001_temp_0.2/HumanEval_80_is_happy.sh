#!/bin/bash
# You are given a string s.
# Your task is to check if the string is happy or not.
# A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
# For example:
# is_happy(a) => False
# is_happy(aa) => False
# is_happy(abcd) => True
# is_happy(aabb) => False
# is_happy(adb) => True
# is_happy(xyy) => False
#
# $1 is a string
is_happy() {
echo 0

}

candidate() {
    is_happy "$@"
}

run_test() {
    [[ $(candidate a) = false ]]
    [[ $(candidate aa) = false ]]
    [[ $(candidate abcd) = true ]]
    [[ $(candidate aabb) = false ]]
    [[ $(candidate adb) = true ]]
    [[ $(candidate xyy) = false ]]
    [[ $(candidate iopaxpoi) = true ]]
    [[ $(candidate iopaxioi) = false ]]
}

run_test