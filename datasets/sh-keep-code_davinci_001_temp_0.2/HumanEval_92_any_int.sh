#!/bin/bash
# Create a function that takes 3 numbers.
# Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
# Returns false in any other cases.
# Examples
# any_int(5, 2, 7) ➞ True
# any_int(3, 2, 2) ➞ False
# any_int(3, -2, 1) ➞ True
# any_int(3.6, -2.2, 2) ➞ False
#
# $1 is a floating point
# $2 is a floating point
# $3 is a floating point
any_int() {
  if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]] && [[ $3 =~ ^[0-9]+$ ]]; then
    if [[ $1 -eq $2 ]] || [[ $1 -eq $3 ]] || [[ $2 -eq $3 ]]; then
      echo "True"
    else
      echo "False"
    fi
  else
    echo "False"
  fi

}

candidate() {
    any_int "$@"
}

set -e
run_test() {
    [[ $(candidate "2" "3" "1") = "true" ]]
    [[ $(candidate "2.5" "2" "3") = "false" ]]
    [[ $(candidate "1.5" "5" "3.5") = "false" ]]
    [[ $(candidate "2" "6" "2") = "false" ]]
    [[ $(candidate "4" "2" "2") = "true" ]]
    [[ $(candidate "2.2" "2.2" "2.2") = "false" ]]
    [[ $(candidate "-4" "6" "2") = "true" ]]
    [[ $(candidate "2" "1" "1") = "true" ]]
    [[ $(candidate "3" "4" "7") = "true" ]]
    [[ $(candidate "3.0" "4" "7") = "false" ]]
}

run_test