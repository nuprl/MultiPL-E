#!/bin/bash
# Return a string containing space-delimited numbers starting from 0 upto n inclusive.
# >>> string_sequence(0)
# '0'
# >>> string_sequence(5)
# '0 1 2 3 4 5'
string_sequence() {
  local n=$1
  local i
  for ((i=0; i<=n; i++)); do
    printf "%d " $i
  done
  printf "\n"

}

candidate() {
    local res=$(string_sequence "$@")
    echo $res
}

test() {
        x0=$(candidate 0)
    assert_equals "0" "${x0[*]}"

        x1=$(candidate 3)
    assert_equals "0 1 2 3" "${x1[*]}"

        x2=$(candidate 10)
    assert_equals "0 1 2 3 4 5 6 7 8 9 10" "${x2[*]}"

}