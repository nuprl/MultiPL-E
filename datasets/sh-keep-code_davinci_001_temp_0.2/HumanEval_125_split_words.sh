#!/bin/bash
# Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
# should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
# alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
# Examples
# split_words("Hello world!") ➞ ["Hello", "world!"]
# split_words("Hello,world!") ➞ ["Hello", "world!"]
# split_words("abcdef") == 3
split_words() {
    local text=$1
    local words=()
    local word=""
    local i=0
    local j=0
    local k=0
    local l=0
    local m=0
    local n=0
    local o=0
    local p=0
    local q=0
    local r=0
    local s=0
    local t=0
    local u=0
    local v=0
    local w=0
    local x=0
    local y=0
    local z=0
    local a=0
    local b=0
    local c=0
    local d=0
    local e=0
    local f=0
    local g=0
    local h=0
    local i=0
    local j=0
    local k=0
    local l=0
    local m=0
    local n=0
    local o=0
    local p=0
    local q=0
    local r=0
    local s=0
    local t=0
    local u=0
    local v=0
    local w=0
    local x=0
    local y=0
    local z=0
    local a=0
    local b=0
    local c=0
    local d=0
    local e=0
    local f=0
    local g=0
    local h=0
    local i=0
    local j=0
    local k=0
    local l=0
    local m=0
    local n=0
    local o=0
    local p=0
    local q=0
    local r=0
    local s=0
    local t=0
    local u=0
    local v=0
    local w=0
    local x=0
    local y=0
    local z=0
    local a=0
    local b=0
    local c=0
    local d=0
    local e=0
    local f=0
    local g=0
    local h=0
    local i=0
    local j=0
    local

}

candidate() {
    local res=$(split_words "$@")
    echo $res
}

test() {
    declare -a x1=("Hello" "world!")
        x0=$(candidate "Hello world!")
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=("Hello" "world!")
        x2=$(candidate "Hello,world!")
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=("Hello" "world,!")
        x4=$(candidate "Hello world,!")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=("Hello,Hello,world" "!")
        x6=$(candidate "Hello,Hello,world !")
    assert_equals "${x7[*]}" "${x6[*]}"

        x8=$(candidate "abcdef")
    assert_equals 3 "${x8[*]}"

        x9=$(candidate "aaabb")
    assert_equals 2 "${x9[*]}"

        x10=$(candidate "aaaBb")
    assert_equals 1 "${x10[*]}"

        x11=$(candidate "")
    assert_equals 0 "${x11[*]}"

}