#!/bin/bash
# The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fibfib(0) == 0
# fibfib(1) == 0
# fibfib(2) == 1
# fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
# Please write a function to efficiently compute the n-th element of the fibfib number sequence.
# >>> fibfib(1)
# 0
# >>> fibfib(5)
# 4
# >>> fibfib(8)
# 24
fibfib() {
  if [ $1 -eq 0 ]; then
    echo 0
  elif [ $1 -eq 1 ]; then
    echo 0
  elif [ $1 -eq 2 ]; then
    echo 1
  else
    local a=0
    local b=0
    local c=1
    for (( i=3; i<=$1; i++ ))
    do
      a=$b
      b=$c
      c=$((a+b+c))
    done
    echo $c
  fi

}

candidate() {
    local res=$(fibfib "$@")
    echo $res
}

test() {
        x0=$(candidate 2)
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 1)
    assert_equals 0 "${x1[*]}"

        x2=$(candidate 5)
    assert_equals 4 "${x2[*]}"

        x3=$(candidate 8)
    assert_equals 24 "${x3[*]}"

        x4=$(candidate 10)
    assert_equals 81 "${x4[*]}"

        x5=$(candidate 12)
    assert_equals 274 "${x5[*]}"

        x6=$(candidate 14)
    assert_equals 927 "${x6[*]}"

}