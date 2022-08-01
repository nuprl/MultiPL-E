#!/bin/bash
# For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
# >>> flip_case('Hello')
# 'hELLO'
#
# $1 is a string
flip_case() {
    echo "$1" | tr '[:upper:]' '[:lower:]' | tr '[:lower:]' '[:upper:]'

}

candidate() {
    flip_case "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "Hello\!") = "hELLO\!" ]]
    [[ $(candidate "These violent delights have violent ends") = "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS" ]]
}

run_test