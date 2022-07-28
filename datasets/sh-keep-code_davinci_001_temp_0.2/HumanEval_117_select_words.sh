#!/bin/bash
# Given a string s and a natural number n, you have been tasked to implement 
# a function that returns a list of all words from string s that contain exactly 
# n consonants, in order these words appear in the string s.
# If the string s is empty then the function should return an empty list.
# Note: you may assume the input string contains only letters and spaces.
# Examples:
# select_words("Mary had a little lamb", 4) ==> ["little"]
# select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
# select_words("simple white space", 2) ==> []
# select_words("Hello world", 4) ==> ["world"]
# select_words("Uncle sam", 3) ==> ["Uncle"]
select_words() {
    local str="$1"
    local n="$2"
    local words=()
    local word=""
    local count=0
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
    local h=

}

candidate() {
    local res=$(select_words "$@")
    echo $res
}

test() {
    declare -a x1=("little")
        x0=$(candidate "Mary had a little lamb" 4)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=("Mary" "lamb")
        x2=$(candidate "Mary had a little lamb" 3)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=()
        x4=$(candidate "simple white space" 2)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=("world")
        x6=$(candidate "Hello world" 4)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=("Uncle")
        x8=$(candidate "Uncle sam" 3)
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=()
        x10=$(candidate "" 4)
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=("b" "c" "d" "f")
        x12=$(candidate "a b c d e f" 1)
    assert_equals "${x13[*]}" "${x12[*]}"

}