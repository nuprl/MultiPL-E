#!/bin/bash
# Given a string 'text', return its md5 hash equivalent string.
# If 'text' is an empty string, return None.
# >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
string_to_md5() {
    if [ -z "$1" ]; then
        echo "None"
    else
        echo "$1" | md5sum | cut -d ' ' -f 1
    fi

}

candidate() {
    local res=$(string_to_md5 "$@")
    echo $res
}

test() {
        x0=$(candidate "Hello world")
    assert_equals "3e25960a79dbc69b674cd4ec67a72c62" "${x0[*]}"

        x1=$(candidate "")
    assert_equals None "${x1[*]}"

        x2=$(candidate "A B C")
    assert_equals "0ef78513b0cb8cef12743f5aeb35f888" "${x2[*]}"

        x3=$(candidate "password")
    assert_equals "5f4dcc3b5aa765d61d8327deb882cf99" "${x3[*]}"

}