#!/bin/bash
# "
# This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
# multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
# change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
# Examples:
# For lst = [1,2,3] the output should be 6
# For lst = []  the output should be 0
# For lst = [-1,-5,2,-1,-5]  the output should be -126
#
# $1 is a space-separated list
sum_squares() {
    local sum=0
    for i in $1; do
        if [[ $((i%3)) -eq 0 ]] && [[ $((i%4)) -ne 0 ]]; then
            sum=$((sum+i*i))
        elif [[ $((i%4)) -eq 0 ]] && [[ $((i%3)) -ne 0 ]]; then
            sum=$((sum+i*i*i))
        fi
    done
    echo $sum

}

candidate() {
    sum_squares "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2 3") = "6" ]]
    [[ $(candidate "1 4 9") = "14" ]]
    [[ $(candidate "") = "0" ]]
    [[ $(candidate "1 1 1 1 1 1 1 1 1") = "9" ]]
    [[ $(candidate "-1 -1 -1 -1 -1 -1 -1 -1 -1") = "-3" ]]
    [[ $(candidate "0") = "0" ]]
    [[ $(candidate "-1 -5 2 -1 -5") = "-126" ]]
    [[ $(candidate "-56 -99 1 0 -2") = "3030" ]]
    [[ $(candidate "-1 0 0 0 0 0 0 0 -1") = "0" ]]
    [[ $(candidate "-16 -9 -2 36 36 26 -20 25 -40 20 -4 12 -26 35 37") = "-14196" ]]
    [[ $(candidate "-1 -3 17 -1 -15 13 -1 14 -14 -12 -5 14 -14 6 13 11 16 16 4 10") = "-1448" ]]
}

run_test