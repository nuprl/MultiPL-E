#!/bin/bash
# Given an array of integers nums, find the minimum sum of any non-empty sub-array
# of nums.
# Example
# minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
# minSubArraySum([-1, -2, -3]) == -6
#
# $1 is a space-separated list
minSubArraySum() {
    local sum=0
    local min=0
    local min_sum=0
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

}

candidate() {
    minSubArraySum "$@"
}

set -e
run_test() {
    [[ $(candidate "2 3 4 1 2 4") = "1" ]]
    [[ $(candidate "-1 -2 -3") = "-6" ]]
    [[ $(candidate "-1 -2 -3 2 -10") = "-14" ]]
    [[ $(candidate "-9999999999999999") = "-9999999999999999" ]]
    [[ $(candidate "0 10 20 1000000") = "0" ]]
    [[ $(candidate "-1 -2 -3 10 -5") = "-6" ]]
    [[ $(candidate "100 -1 -2 -3 10 -5") = "-6" ]]
    [[ $(candidate "10 11 13 8 3 4") = "3" ]]
    [[ $(candidate "100 -33 32 -1 0 -2") = "-33" ]]
    [[ $(candidate "-10") = "-10" ]]
    [[ $(candidate "7") = "7" ]]
    [[ $(candidate "1 -1") = "-1" ]]
}

run_test