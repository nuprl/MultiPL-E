#!/bin/bash
# Create a function that takes integers, floats, or strings representing
# real numbers, and returns the larger variable in its given variable type.
# Return None if the values are equal.
# Note: If a real number is represented as a string, the floating point might be . or ,
# compare_one(1, 2.5) ➞ 2.5
# compare_one(1, "2,3") ➞ "2,3"
# compare_one("5,1", "6") ➞ "6"
# compare_one("1", 1) ➞ None
compare_one() {
  if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]; then
    if [[ $1 -gt $2 ]]; then
      echo $1
    elif [[ $1 -eq $2 ]]; then
      echo None
    else
      echo $2
    fi
  elif [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+\.[0-9]+$ ]]; then
    if [[ $1 -gt $2 ]]; then
      echo $1
    elif [[ $1 -eq $2 ]]; then
      echo None
    else
      echo $2
    fi
  elif [[ $1 =~ ^[0-9]+\.[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]; then
    if [[ $1 -gt $2 ]]; then
      echo $1
    elif [[ $1 -eq $2 ]]; then
      echo None
    else
      echo $2
    fi
  elif [[ $1 =~ ^[0-9]+\.[0-9]+$ ]] && [[ $2 =~ ^[0-9]+\.[0-9]+$ ]]; then
    if [[ $(echo $1 | sed 's/[.,]//g') -gt $(echo $2 | sed 's/[.,]//g') ]]; then
      echo $1
    elif [[ $(echo $1 | sed 's/[.,]//g') -eq $(echo $2 | sed 's/[.,]//g') ]]; then
      echo None
    else
      echo $2
    fi
  elif [[ $1 =~ ^[0-9]+\.[0-9]+$ ]] && [[ $2 =~ ^[0-9]+\.[0-9]+$ ]]; then
    if [[ $(echo $1 | sed 's/[.,]//g') -gt $(echo $2 | sed 's/[.,]//g') ]]; then
      echo $1
    elif [[ $(echo $1 | sed

}

candidate() {
    local res=$(compare_one "$@")
    echo $res
}

test() {
        x0=$(candidate 1 2)
    assert_equals 2 "${x0[*]}"

        x1=$(candidate 1 2.5)
    assert_equals 2.5 "${x1[*]}"

        x2=$(candidate 2 3)
    assert_equals 3 "${x2[*]}"

        x3=$(candidate 5 6)
    assert_equals 6 "${x3[*]}"

        x4=$(candidate 1 '2,3')
    assert_equals '2,3' "${x4[*]}"

        x5=$(candidate '5,1' '6')
    assert_equals '6' "${x5[*]}"

        x6=$(candidate '1' '2')
    assert_equals '2' "${x6[*]}"

        x7=$(candidate '1' 1)
    assert_equals  "${x7[*]}"

}