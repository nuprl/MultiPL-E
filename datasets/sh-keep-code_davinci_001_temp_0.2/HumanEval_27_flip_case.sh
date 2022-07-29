#!/bin/bash
# For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
# >>> flip_case('Hello')
# 'hELLO'
flip_case() {
echo 0

}

candidate() {
    flip_case "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate Hello\!) = hELLO\! ]]
    [[ $(candidate "These violent delights have violent ends") = "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS" ]]
}

run_test