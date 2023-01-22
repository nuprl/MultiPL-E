#!/bin/bash
# Given a string 'text', return its md5 hash equivalent string.
# If 'text' is an empty string, return None.
#
# $1 is a string
string_to_md5() {
    if [ -z "$1" ]; then
        echo -n "None"
    else
        echo -n "$1" | md5sum | cut -d ' ' -f 1
    fi
}

candidate() {
    string_to_md5 "$@"
}

set -e
run_test() {
    [[ $(candidate "Hello world") = "3e25960a79dbc69b674cd4ec67a72c62" ]]
    [[ $(candidate "") = "None" ]]
    [[ $(candidate "A B C") = "0ef78513b0cb8cef12743f5aeb35f888" ]]
    [[ $(candidate "password") = "5f4dcc3b5aa765d61d8327deb882cf99" ]]
}

run_test