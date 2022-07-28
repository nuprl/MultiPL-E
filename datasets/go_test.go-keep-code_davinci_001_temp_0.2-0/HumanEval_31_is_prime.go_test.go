package is_prime_test

import (
    "testing"
    "fmt"
)

// Return true if a given number is prime, and false otherwise.
// >>> is_prime(6)
// False
// >>> is_prime(101)
// True
// >>> is_prime(11)
// True
// >>> is_prime(13441)
// True
// >>> is_prime(61)
// True
// >>> is_prime(4)
// False
// >>> is_prime(1)
// False
func is_prime(n int) bool {
    if n == 1 {
        return false
    }
    if n == 2 {
        return true
    }
    for i := 2; i < n; i++ {
        if n % i == 0 {
            return false
        }
    }
    return true
}


func TestIs_Prime(t *testing.T) {
  candidate := is_prime
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(6), expected: false },
     { actual: candidate(101), expected: true },
     { actual: candidate(11), expected: true },
     { actual: candidate(13441), expected: true },
     { actual: candidate(61), expected: true },
     { actual: candidate(4), expected: false },
     { actual: candidate(1), expected: false },
     { actual: candidate(5), expected: true },
     { actual: candidate(11), expected: true },
     { actual: candidate(17), expected: true },
     { actual: candidate(85), expected: false },
     { actual: candidate(77), expected: false },
     { actual: candidate(255379), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
