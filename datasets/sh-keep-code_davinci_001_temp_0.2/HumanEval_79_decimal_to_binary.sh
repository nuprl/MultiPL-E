#!/bin/bash
# You will be given a number in decimal form and your task is to convert it to
# binary format. The function should return a string, with each character representing a binary
# number. Each character in the string will be '0' or '1'.
# There will be an extra couple of characters 'db' at the beginning and at the end of the string.
# The extra characters are there to help with the format.
# Examples:
# decimal_to_binary(15)   # returns "db1111db"
# decimal_to_binary(32)   # returns "db100000db"
decimal_to_binary() {
    local number=$1
    local binary=""
    local remainder
    while [ $number -gt 0 ]; do
        remainder=$((number % 2))
        binary="${remainder}${binary}"
        number=$((number / 2))
    done
    echo "db${binary}db"

}

candidate() {
    local res=$(decimal_to_binary "$@")
    echo $res
}

test() {
        x0=$(candidate 0)
    assert_equals "db0db" "${x0[*]}"

        x1=$(candidate 32)
    assert_equals "db100000db" "${x1[*]}"

        x2=$(candidate 103)
    assert_equals "db1100111db" "${x2[*]}"

        x3=$(candidate 15)
    assert_equals "db1111db" "${x3[*]}"

}