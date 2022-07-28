#!/bin/bash
# Given a list of numbers, return whether or not they are sorted
# in ascending order. If list has more than 1 duplicate of the same
# number, return False. Assume no negative numbers and only integers.
# Examples
# is_sorted([5]) ➞ True
# is_sorted([1, 2, 3, 4, 5]) ➞ True
# is_sorted([1, 3, 2, 4, 5]) ➞ False
# is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
# is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
# is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
# is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
# is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
is_sorted() {
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
    local res=$(is_sorted "$@")
    echo $res
}

test() {
    declare -a x0=(5)
    x1=$(candidate "${x0[*]}")
    assert_equals true "${x1[*]}"

    declare -a x2=(1 2 3 4 5)
    x3=$(candidate "${x2[*]}")
    assert_equals true "${x3[*]}"

    declare -a x4=(1 3 2 4 5)
    x5=$(candidate "${x4[*]}")
    assert_equals false "${x5[*]}"

    declare -a x6=(1 2 3 4 5 6)
    x7=$(candidate "${x6[*]}")
    assert_equals true "${x7[*]}"

    declare -a x8=(1 2 3 4 5 6 7)
    x9=$(candidate "${x8[*]}")
    assert_equals true "${x9[*]}"

    declare -a x10=(1 3 2 4 5 6 7)
    x11=$(candidate "${x10[*]}")
    assert_equals false "${x11[*]}"

    declare -a x12=()
    x13=$(candidate "${x12[*]}")
    assert_equals true "${x13[*]}"

    declare -a x14=(1)
    x15=$(candidate "${x14[*]}")
    assert_equals true "${x15[*]}"

    declare -a x16=(3 2 1)
    x17=$(candidate "${x16[*]}")
    assert_equals false "${x17[*]}"

    declare -a x18=(1 2 2 2 3 4)
    x19=$(candidate "${x18[*]}")
    assert_equals false "${x19[*]}"

    declare -a x20=(1 2 3 3 3 4)
    x21=$(candidate "${x20[*]}")
    assert_equals false "${x21[*]}"

    declare -a x22=(1 2 2 3 3 4)
    x23=$(candidate "${x22[*]}")
    assert_equals true "${x23[*]}"

    declare -a x24=(1 2 3 4)
    x25=$(candidate "${x24[*]}")
    assert_equals true "${x25[*]}"

}