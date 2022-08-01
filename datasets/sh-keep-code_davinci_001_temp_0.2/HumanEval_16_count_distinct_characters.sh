#!/bin/bash
# Given a string, find out how many distinct characters (regardless of case) does it consist of
# >>> count_distinct_characters('xyzXYZ')
# 3
# >>> count_distinct_characters('Jerry')
# 4
#
# $1 is a string
count_distinct_characters() {
    local string="$1"
    local distinct_characters=0
    for character in $(echo "$string" | tr '[:upper:]' '[:lower:]'); do
        if [[ "$(echo "$string" | grep -o "$character" | wc -l)" -eq 1 ]]; then
            ((distinct_characters++))
        fi
    done
    echo "$distinct_characters"

}

candidate() {
    count_distinct_characters "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "0" ]]
    [[ $(candidate "abcde") = "5" ]]
    [[ $(candidate "abcdecadeCADE") = "5" ]]
    [[ $(candidate "aaaaAAAAaaaa") = "1" ]]
    [[ $(candidate "Jerry jERRY JeRRRY") = "5" ]]
}

run_test