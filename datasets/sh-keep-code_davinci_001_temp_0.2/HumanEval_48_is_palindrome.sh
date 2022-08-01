#!/bin/bash
# Checks if given string is a palindrome
# >>> is_palindrome('')
# True
# >>> is_palindrome('aba')
# True
# >>> is_palindrome('aaaaa')
# True
# >>> is_palindrome('zbcd')
# False
#
# $1 is a string
is_palindrome() {
echo 0

}

candidate() {
    is_palindrome "$@"
}

run_test() {
    [[ $(candidate "") = true ]]
    [[ $(candidate aba) = true ]]
    [[ $(candidate aaaaa) = true ]]
    [[ $(candidate zbcd) = false ]]
    [[ $(candidate xywyx) = true ]]
    [[ $(candidate xywyz) = false ]]
    [[ $(candidate xywzx) = false ]]
}

run_test