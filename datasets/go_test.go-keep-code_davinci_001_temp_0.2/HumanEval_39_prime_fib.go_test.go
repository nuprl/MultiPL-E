package prime_fib_test

import (
    "testing"
    "fmt"
)

// prime_fib returns n-th number that is a Fibonacci number and it's also prime.
// >>> prime_fib(1)
// 2
// >>> prime_fib(2)
// 3
// >>> prime_fib(3)
// 5
// >>> prime_fib(4)
// 13
// >>> prime_fib(5)
// 89
func prime_fib(n int) int {
    return 0
}


func TestPrime_Fib(t *testing.T) {
  candidate := prime_fib
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(1), expected: 2 },
     { actual: candidate(2), expected: 3 },
     { actual: candidate(3), expected: 5 },
     { actual: candidate(4), expected: 13 },
     { actual: candidate(5), expected: 89 },
     { actual: candidate(6), expected: 233 },
     { actual: candidate(7), expected: 1597 },
     { actual: candidate(8), expected: 28657 },
     { actual: candidate(9), expected: 514229 },
     { actual: candidate(10), expected: 433494437 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
