#!/bin/bash
# remove_vowels is a function that takes string and returns string without vowels.
# >>> remove_vowels('')
# ''
# >>> remove_vowels('abcdef')
# 'bcdf'
# >>> remove_vowels('aaaaa')
# ''
# >>> remove_vowels('aaBAA')
# 'B'
# >>> remove_vowels('zbcd')
# 'zbcd'
remove_vowels() {
    echo "${1//[aeiouAEIOU]/}"

}

candidate() {
    local res=$(remove_vowels "$@")
    echo $res
}

test() {
        x0=$(candidate "")
    assert_equals "" "${x0[*]}"

        x1=$(candidate "abcdef\nghijklm")
    assert_equals "bcdf\nghjklm" "${x1[*]}"

        x2=$(candidate "fedcba")
    assert_equals "fdcb" "${x2[*]}"

        x3=$(candidate "eeeee")
    assert_equals "" "${x3[*]}"

        x4=$(candidate "acBAA")
    assert_equals "cB" "${x4[*]}"

        x5=$(candidate "EcBOO")
    assert_equals "cB" "${x5[*]}"

        x6=$(candidate "ybcd")
    assert_equals "ybcd" "${x6[*]}"

}
