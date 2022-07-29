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
is_palindrome() {
    local str=$1
    local len=${#str}
    local i=0
    while [ $i -lt $((len/2)) ]; do
        if [ "${str:$i:1}" != "${str:$((len-i-1)):1}" ]; then
            return 1
        fi
        i=$((i+1))
    done
    return 0

}

candidate() {
    local res=$(is_palindrome "$@")
    echo $res
}

test() {
        x0=$(candidate "")
    assert_equals true "${x0[*]}"

        x1=$(candidate "aba")
    assert_equals true "${x1[*]}"

        x2=$(candidate "aaaaa")
    assert_equals true "${x2[*]}"

        x3=$(candidate "zbcd")
    assert_equals false "${x3[*]}"

        x4=$(candidate "xywyx")
    assert_equals true "${x4[*]}"

        x5=$(candidate "xywyz")
    assert_equals false "${x5[*]}"

        x6=$(candidate "xywzx")
    assert_equals false "${x6[*]}"

}