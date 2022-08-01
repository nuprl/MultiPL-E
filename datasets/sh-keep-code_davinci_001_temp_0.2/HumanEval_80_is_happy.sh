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
#
# $1 is a string
is_happy() {
    local s=$1
    local n=${#s}
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
    local k=

}

candidate() {
    is_happy "$@"
}

run_test() {
    [[ $(candidate a) = false ]]
    [[ $(candidate aa) = false ]]
    [[ $(candidate abcd) = true ]]
    [[ $(candidate aabb) = false ]]
    [[ $(candidate adb) = true ]]
    [[ $(candidate xyy) = false ]]
    [[ $(candidate iopaxpoi) = true ]]
    [[ $(candidate iopaxioi) = false ]]
}

run_test