#!/bin/bash
# Given an array arr of integers, find the minimum number of elements that
# need to be changed to make the array palindromic. A palindromic array is an array that
# is read the same backwards and forwards. In one change, you can change one element to any other element.
# For example:
# smallest_change([1,2,3,5,4,7,9,6]) == 4
# smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
# smallest_change([1, 2, 3, 2, 1]) == 0
#
# $1 is a space-separated list
smallest_change() {
    local -a arr
    IFS=' ' read -ra arr <<< "$1"
    local -i min=${#arr[@]}
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i aa=0
    local -i bb=0
    local -i cc=0
    local -i dd=0
    local -i ee=0
    local -i ff=0
    local -i gg=0
    local -i hh=0
    local -i ii=0
    local -i jj=0
    local -i kk=0
    local -i ll=0
    local -i mm=0
    local -i nn=0
    local -i oo=0
    local -i pp=0
    local -i qq=0
    local -i rr=0
    local -i ss=0
    local -i tt=0
    local -i uu=0
    local -i vv=0
    local -i ww=0
    local -i xx=0
    local -i yy=0
    local -i zz=0
    local -i aaa=0
    local -i bbb=0
    local -i ccc=0
    local -i ddd=0
    local -i eee=0
    local -i fff=0
    local -i ggg=0
    local -i hhh=0
    local -i iii=0
    local -i jjj=0
    local -i kkk=

}

candidate() {
    smallest_change "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2 3 5 4 7 9 6") = "4" ]]
    [[ $(candidate "1 2 3 4 3 2 2") = "1" ]]
    [[ $(candidate "1 4 2") = "1" ]]
    [[ $(candidate "1 4 4 2") = "1" ]]
    [[ $(candidate "1 2 3 2 1") = "0" ]]
    [[ $(candidate "3 1 1 3") = "0" ]]
    [[ $(candidate "1") = "0" ]]
    [[ $(candidate "0 1") = "1" ]]
}

run_test