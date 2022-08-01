#!/bin/bash
# You will be given a number in decimal form and your task is to convert it to
# binary format. The function should return a string, with each character representing a binary
# number. Each character in the string will be '0' or '1'.
# There will be an extra couple of characters 'db' at the beginning and at the end of the string.
# The extra characters are there to help with the format.
# Examples:
# decimal_to_binary(15)   # returns "db1111db"
# decimal_to_binary(32)   # returns "db100000db"
#
# $1 is an integer
decimal_to_binary() {
  local -i num=$1
  local -i i=0
  local -i binary=0
  local -i remainder=0
  local -i power=0
  local -i result=""
  local -i length=0
  local -i max_length=0
  local -i max_power=0
  local -i max_num=0
  local -i max_binary=0
  local -i max_remainder=0
  local -i max_result=""
  local -i max_i=0
  local -i max_power_i=0
  local -i max_binary_i=0
  local -i max_remainder_i=0
  local -i max_result_i=0
  local -i max_length_i=0
  local -i max_max_length_i=0
  local -i max_max_power_i=0
  local -i max_max_num_i=0
  local -i max_max_binary_i=0
  local -i max_max_remainder_i=0
  local -i max_max_result_i=0
  local -i max_max_i=0
  local -i max_max_power_i=0
  local -i max_max_binary_i=0
  local -i max_max_remainder_i=0
  local -i max_max_result_i=0
  local -i max_max_length_i=0
  local -i max_max_max_length_i=0
  local -i max_max_max_power_i=0
  local -i max_max_max_num_i=0
  local -i max_max_max_binary_i=0
  local -i max_max_max_remainder_i=0
  local -i max_max_max_result_i=0
  local -i max_max_max_i=0
  local -i max_max_max_power_i=0
  local -i max_max_max_binary_i

}

candidate() {
    decimal_to_binary "$@"
}

set -e
run_test() {
    [[ $(candidate "0") = "db0db" ]]
    [[ $(candidate "32") = "db100000db" ]]
    [[ $(candidate "103") = "db1100111db" ]]
    [[ $(candidate "15") = "db1111db" ]]
}

run_test