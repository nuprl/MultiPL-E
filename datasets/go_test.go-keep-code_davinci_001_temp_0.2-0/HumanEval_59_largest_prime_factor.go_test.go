package largest_prime_factor_test

import (
    "testing"
    "fmt"
)

// Return the largest prime factor of n. Assume n > 1 and is not a prime.
// >>> largest_prime_factor(13195)
// 29
// >>> largest_prime_factor(2048)
// 2
func largest_prime_factor(n int) int {
    var i int
    for i = 2; i < n; i++ {
        if n % i == 0 {
            n = n / i
        }
    }
    return i
}


func TestLargest_Prime_Factor(t *testing.T) {
  candidate := largest_prime_factor
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(15), expected: 5 },
     { actual: candidate(27), expected: 3 },
     { actual: candidate(63), expected: 7 },
     { actual: candidate(330), expected: 11 },
     { actual: candidate(13195), expected: 29 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
