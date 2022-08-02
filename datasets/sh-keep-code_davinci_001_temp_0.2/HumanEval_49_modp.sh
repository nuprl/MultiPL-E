#!/bin/bash
# Return 2^n modulo p (be aware of numerics).
# >>> modp(3, 5)
# 3
# >>> modp(1101, 101)
# 2
# >>> modp(0, 101)
# 1
# >>> modp(3, 11)
# 8
# >>> modp(100, 101)
# 1
#
# $1 is an integer
# $2 is an integer
modp() {
  local n=$1
  local p=$2
  local r=1
  while [ $n -gt 0 ]; do
    if [ $((n % 2)) -eq 1 ]; then
      r=$((r * p))
    fi
    n=$((n / 2))
    p=$((p * p))
  done
  echo $r

}

candidate() {
    modp "$@"
}

set -e
run_test() {
    [[ $(candidate "3" "5") = "3" ]]
    [[ $(candidate "1101" "101") = "2" ]]
    [[ $(candidate "0" "101") = "1" ]]
    [[ $(candidate "3" "11") = "8" ]]
    [[ $(candidate "100" "101") = "1" ]]
    [[ $(candidate "30" "5") = "4" ]]
    [[ $(candidate "31" "5") = "3" ]]
}

run_test