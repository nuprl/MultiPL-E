#!/bin/bash
# Given a string s, count the number of uppercase vowels in even indices.
# For example:
# count_upper('aBCdEf') returns 1
# count_upper('abcdefg') returns 0
# count_upper('dBBE') returns 0
#
# $1 is a string
count_upper() {
    local count=0
    local i=0
    local s=$1
    while [ $i -lt ${#s} ]; do
        if [[ ${s:$i:1} =~ [AEIOU] ]]; then
            ((count++))
        fi
        ((i+=2))
    done
    echo $count

}

candidate() {
    count_upper "$@"
}

set -e
run_test() {
    [[ $(candidate "aBCdEf") = "1" ]]
    [[ $(candidate "abcdefg") = "0" ]]
    [[ $(candidate "dBBE") = "0" ]]
    [[ $(candidate "B") = "0" ]]
    [[ $(candidate "U") = "1" ]]
    [[ $(candidate "") = "0" ]]
    [[ $(candidate "EEEE") = "2" ]]
}

run_test