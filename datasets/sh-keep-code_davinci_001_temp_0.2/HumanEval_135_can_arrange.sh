#!/bin/bash
# Create a function which returns the largest index of an element which
# is not greater than or equal to the element immediately preceding it. If
# no such element exists then return -1. The given array will not contain
# duplicate values.
# Examples:
# can_arrange([1,2,4,3,5]) = 3
# can_arrange([1,2,3]) = -1
#
# $1 is a space-separated list
can_arrange() {
    local -a arr=("${!1}")
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
    local -i kkk=0
    local -i lll=0
    local -i mmm=0
   

}

candidate() {
    can_arrange "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2 4 3 5") = "3" ]]
    [[ $(candidate "1 2 4 5") = "-1" ]]
    [[ $(candidate "1 4 2 5 6 7 8 9 10") = "2" ]]
    [[ $(candidate "4 8 5 7 3") = "4" ]]
    [[ $(candidate "") = "-1" ]]
}

run_test