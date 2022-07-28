package fibfib_test

import (
    "testing"
    "fmt"
)

// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fibfib(0) == 0
// fibfib(1) == 0
// fibfib(2) == 1
// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
// Please write a function to efficiently compute the n-th element of the fibfib number sequence.
// >>> fibfib(1)
// 0
// >>> fibfib(5)
// 4
// >>> fibfib(8)
// 24
func fibfib(n int) int {
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 0
    }
    if n == 2 {
        return 1
    }
    return fibfib(n-1) + fibfib(n-2) + fibfib(n-3)
}


func TestFibfib(t *testing.T) {
  candidate := fibfib
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(2), expected: 1 },
     { actual: candidate(1), expected: 0 },
     { actual: candidate(5), expected: 4 },
     { actual: candidate(8), expected: 24 },
     { actual: candidate(10), expected: 81 },
     { actual: candidate(12), expected: 274 },
     { actual: candidate(14), expected: 927 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
