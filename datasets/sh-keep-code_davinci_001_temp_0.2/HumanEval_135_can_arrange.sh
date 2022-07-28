#!/bin/bash
# Create a function which returns the largest index of an element which
# is not greater than or equal to the element immediately preceding it. If
# no such element exists then return -1. The given array will not contain
# duplicate values.
# Examples:
# can_arrange([1,2,4,3,5]) = 3
# can_arrange([1,2,3]) = -1
can_arrange() {
  local -a arr=("$@")
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
  local -

}

candidate() {
    local res=$(can_arrange "$@")
    echo $res
}

test() {
    declare -a x0=(1 2 4 3 5)
    x1=$(candidate "${x0[*]}")
    assert_equals 3 "${x1[*]}"

    declare -a x2=(1 2 4 5)
    x3=$(candidate "${x2[*]}")
    assert_equals -1 "${x3[*]}"

    declare -a x4=(1 4 2 5 6 7 8 9 10)
    x5=$(candidate "${x4[*]}")
    assert_equals 2 "${x5[*]}"

    declare -a x6=(4 8 5 7 3)
    x7=$(candidate "${x6[*]}")
    assert_equals 4 "${x7[*]}"

    declare -a x8=()
    x9=$(candidate "${x8[*]}")
    assert_equals -1 "${x9[*]}"

}