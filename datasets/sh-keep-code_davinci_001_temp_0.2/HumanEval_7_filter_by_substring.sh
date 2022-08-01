#!/bin/bash
# Filter an input list of strings only for ones that contain given substring
# >>> filter_by_substring([], 'a')
# []
# >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
# ['abc', 'bacd', 'array']
#
# $1 is a space-separated list
# $2 is a string
filter_by_substring() {
  local -r input_list="$1"
  local -r substring="$2"
  local -r result_list=()
  for item in ${input_list[@]}; do
    if [[ $item == *"$substring"* ]]; then
      result_list+=("$item")
    fi
  done
  echo "${result_list[@]}"

}

candidate() {
    filter_by_substring "$@"
}

set -e
run_test() {
    [[ $(candidate "" "john") = "" ]]
    [[ $(candidate "xxx asd xxy john doe xxxAAA xxx" "xxx") = "xxx xxxAAA xxx" ]]
    [[ $(candidate "xxx asd aaaxxy john doe xxxAAA xxx" "xx") = "xxx aaaxxy xxxAAA xxx" ]]
    [[ $(candidate "grunt trumpet prune gruesome" "run") = "grunt prune" ]]
}

run_test