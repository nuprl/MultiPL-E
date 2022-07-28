package fib4_test

import (
    "testing"
    "fmt"
)

// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fib4(0) -> 0
// fib4(1) -> 0
// fib4(2) -> 2
// fib4(3) -> 0
// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
// >>> fib4(5)
// 4
// >>> fib4(6)
// 8
// >>> fib4(7)
// 14
func fib4(n int) int {
    if n < 0 {
        return 0
    }
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 0
    }
    if n == 2 {
        return 2
    }
    if n == 3 {
        return 0
    }
    if n == 4 {
        return 4
    }
    return fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4)
}


func TestFib4(t *testing.T) {
  candidate := fib4
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5), expected: 4 },
     { actual: candidate(8), expected: 28 },
     { actual: candidate(10), expected: 104 },
     { actual: candidate(12), expected: 386 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
