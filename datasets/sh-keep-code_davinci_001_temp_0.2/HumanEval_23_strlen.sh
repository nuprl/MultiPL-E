#!/bin/bash
# Return length of given string
# >>> strlen('')
# 0
# >>> strlen('abc')
# 3
strlen() {
    local str="$1"
    local len=0
    while [ "${str}" != "" ]; do
        str="${str#?}"
        len=$((len+1))
    done
    echo "${len}"

}

candidate() {
    local res=$(strlen "$@")
    echo $res
}

test() {
        x0=$(candidate '')
    assert_equals 0 "${x0[*]}"

        x1=$(candidate 'x')
    assert_equals 1 "${x1[*]}"

        x2=$(candidate 'asdasnakj')
    assert_equals 9 "${x2[*]}"

}