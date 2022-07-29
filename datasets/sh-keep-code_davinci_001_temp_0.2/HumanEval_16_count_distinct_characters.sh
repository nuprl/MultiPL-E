#!/bin/bash
# Given a string, find out how many distinct characters (regardless of case) does it consist of
# >>> count_distinct_characters('xyzXYZ')
# 3
# >>> count_distinct_characters('Jerry')
# 4
count_distinct_characters() {
echo 0

}

candidate() {
    count_distinct_characters "$@"
}

run_test() {
    [[ $(candidate "") = 0 ]]
    [[ $(candidate abcde) = 5 ]]
    [[ $(candidate abcdecadeCADE) = 5 ]]
    [[ $(candidate aaaaAAAAaaaa) = 1 ]]
    [[ $(candidate "Jerry jERRY JeRRRY") = 5 ]]
}

run_test