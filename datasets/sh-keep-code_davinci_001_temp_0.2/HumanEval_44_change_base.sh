#!/bin/bash
# Change numerical base of input number x to base.
# return string representation after the conversion.
# base numbers are less than 10.
# >>> change_base(8, 3)
# '22'
# >>> change_base(8, 2)
# '1000'
# >>> change_base(7, 2)
# '111'
#
# $1 is an integer
# $2 is an integer
change_base() {
  local x=$1
  local base=$2
  local result=""
  while [ $x -gt 0 ]; do
    local digit=$((x % base))
    result="$digit$result"
    x=$((x / base))
  done
  echo $result

}

candidate() {
    change_base "$@"
}

run_test() {
    [[ $(candidate 8 3) = 22 ]]
    [[ $(candidate 9 3) = 100 ]]
    [[ $(candidate 234 2) = 11101010 ]]
    [[ $(candidate 16 2) = 10000 ]]
    [[ $(candidate 8 2) = 1000 ]]
    [[ $(candidate 7 2) = 111 ]]
    [[ $(candidate 2 3) = 2 ]]
    [[ $(candidate 3 4) = 3 ]]
    [[ $(candidate 4 5) = 4 ]]
    [[ $(candidate 5 6) = 5 ]]
    [[ $(candidate 6 7) = 6 ]]
    [[ $(candidate 7 8) = 7 ]]
}

run_test