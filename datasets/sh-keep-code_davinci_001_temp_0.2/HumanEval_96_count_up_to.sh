#!/bin/bash
# Implement a function that takes an non-negative integer and returns an array of the first n
# integers that are prime numbers and less than n.
# for example:
# count_up_to(5) => [2,3]
# count_up_to(11) => [2,3,5,7]
# count_up_to(0) => []
# count_up_to(20) => [2,3,5,7,11,13,17,19]
# count_up_to(1) => []
# count_up_to(18) => [2,3,5,7,11,13,17]
#
# $1 is an integer
count_up_to() {
    if [ $1 -eq 0 ]; then
        echo ""
    elif [ $1 -eq 1 ]; then
        echo ""
    else
        #echo "count_up_to $1"
        local i=2
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
        local

}

candidate() {
    count_up_to "$@"
}

run_test() {
    [[ $(candidate 5) = "2 3" ]]
    [[ $(candidate 6) = "2 3 5" ]]
    [[ $(candidate 7) = "2 3 5" ]]
    [[ $(candidate 10) = "2 3 5 7" ]]
    [[ $(candidate 0) = "" ]]
    [[ $(candidate 22) = "2 3 5 7 11 13 17 19" ]]
    [[ $(candidate 1) = "" ]]
    [[ $(candidate 18) = "2 3 5 7 11 13 17" ]]
    [[ $(candidate 47) = "2 3 5 7 11 13 17 19 23 29 31 37 41 43" ]]
    [[ $(candidate 101) = "2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97" ]]
}

run_test