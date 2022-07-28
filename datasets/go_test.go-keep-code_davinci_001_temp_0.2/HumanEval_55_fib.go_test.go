package fib_test

import (
    "testing"
    "fmt"
)

// Return n-th Fibonacci number.
// >>> fib(10)
// 55
// >>> fib(1)
// 1
// >>> fib(8)
// 21
func fib(n int) int {
    if n < 2 {
        return n
    }
    return fib(n - 1) + fib(n - 2)
}


func TestFib(t *testing.T) {
  candidate := fib
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(10), expected: 55 },
     { actual: candidate(1), expected: 1 },
     { actual: candidate(8), expected: 21 },
     { actual: candidate(11), expected: 89 },
     { actual: candidate(12), expected: 144 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
