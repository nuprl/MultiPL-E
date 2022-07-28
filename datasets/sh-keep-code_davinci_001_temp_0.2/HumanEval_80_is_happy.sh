#!/bin/bash
# You are given a string s.
# Your task is to check if the string is happy or not.
# A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
# For example:
# is_happy(a) => False
# is_happy(aa) => False
# is_happy(abcd) => True
# is_happy(aabb) => False
# is_happy(adb) => True
# is_happy(xyy) => False
is_happy() {
    local s=$1
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
    local h=0
    local i=0
    local j=0
    local k=0
   

}

candidate() {
    local res=$(is_happy "$@")
    echo $res
}

test() {
        x0=$(candidate "a")
    assert_equals false "${x0[*]}"

        x1=$(candidate "aa")
    assert_equals false "${x1[*]}"

        x2=$(candidate "abcd")
    assert_equals true "${x2[*]}"

        x3=$(candidate "aabb")
    assert_equals false "${x3[*]}"

        x4=$(candidate "adb")
    assert_equals true "${x4[*]}"

        x5=$(candidate "xyy")
    assert_equals false "${x5[*]}"

        x6=$(candidate "iopaxpoi")
    assert_equals true "${x6[*]}"

        x7=$(candidate "iopaxioi")
    assert_equals false "${x7[*]}"

}