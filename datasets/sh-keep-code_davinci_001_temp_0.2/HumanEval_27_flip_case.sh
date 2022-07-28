#!/bin/bash
# For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
# >>> flip_case('Hello')
# 'hELLO'
flip_case() {
  local str="$1"
  local result=""
  for (( i=0; i<${#str}; i++ )); do
    local char="${str:$i:1}"
    if [[ "$char" =~ [a-z] ]]; then
      result+="${char^^}"
    elif [[ "$char" =~ [A-Z] ]]; then
      result+="${char,,}"
    else
      result+="$char"
    fi
  done
  echo "$result"

}

candidate() {
    local res=$(flip_case "$@")
    echo $res
}

test() {
        x0=$(candidate "")
    assert_equals "" "${x0[*]}"

        x1=$(candidate "Hello!")
    assert_equals "hELLO!" "${x1[*]}"

        x2=$(candidate "These violent delights have violent ends")
    assert_equals "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS" "${x2[*]}"

}