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
echo 0

}

candidate() {
    decimal_to_binary "$@"
}

run_test() {
    [[ $(candidate 0) = db0db ]]
    [[ $(candidate 32) = db100000db ]]
    [[ $(candidate 103) = db1100111db ]]
    [[ $(candidate 15) = db1111db ]]
}

run_test