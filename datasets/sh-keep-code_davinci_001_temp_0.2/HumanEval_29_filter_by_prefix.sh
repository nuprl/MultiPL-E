#!/bin/bash
# Filter an input list of strings only for ones that start with a given prefix.
# >>> filter_by_prefix([], 'a')
# []
# >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
# ['abc', 'array']
#
# $1 is a space-separated list
# $2 is a string
filter_by_prefix() {
    local list="$1"
    local prefix="$2"
    local result=()
    for item in $list; do
        if [[ $item == $prefix* ]]; then
            result+=("$item")
        fi
    done
    echo "${result[@]}"

}

candidate() {
    filter_by_prefix "$@"
}

set -e
run_test() {
    [[ $(candidate "" "john") = "" ]]
    [[ $(candidate "xxx asd xxy john doe xxxAAA xxx" "xxx") = "xxx xxxAAA xxx" ]]
}

run_test