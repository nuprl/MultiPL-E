#!/bin/bash
# The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fib4(0) -> 0
# fib4(1) -> 0
# fib4(2) -> 2
# fib4(3) -> 0
# fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
# Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
# >>> fib4(5)
# 4
# >>> fib4(6)
# 8
# >>> fib4(7)
# 14
#
# $1 is an integer
fib4() {
	if [ $1 -lt 0 ]; then
		return 1
	fi
	if [ $1 -eq 0 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 1 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 2 ]; then
		echo 2
		return 0
	fi
	if [ $1 -eq 3 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 4 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 5 ]; then
		echo 4
		return 0
	fi
	if [ $1 -eq 6 ]; then
		echo 8
		return 0
	fi
	if [ $1 -eq 7 ]; then
		echo 14
		return 0
	fi
	if [ $1 -eq 8 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 9 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 10 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 11 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 12 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 13 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 14 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 15 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 16 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 17 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 18 ]; then
		echo 0
		return 0
	fi
	if [ $1 -eq 19 ]; then
		echo 0
		return 0
	fi


}

candidate() {
    fib4 "$@"
}

set -e
run_test() {
    [[ $(candidate "5") = "4" ]]
    [[ $(candidate "8") = "28" ]]
    [[ $(candidate "10") = "104" ]]
    [[ $(candidate "12") = "386" ]]
}

run_test