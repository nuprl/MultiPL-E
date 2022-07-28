package modp_test

import (
    "testing"
    "fmt"
)

// Return 2^n modulo p (be aware of numerics).
// >>> modp(3, 5)
// 3
// >>> modp(1101, 101)
// 2
// >>> modp(0, 101)
// 1
// >>> modp(3, 11)
// 8
// >>> modp(100, 101)
// 1
func modp(n int, p int) int {
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n/2, p) * modp(n/2, p) % p
    }
    return modp(n/2, p) * modp(n/2, p) % p * n % p
}


func TestModp(t *testing.T) {
  candidate := modp
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3, 5), expected: 3 },
     { actual: candidate(1101, 101), expected: 2 },
     { actual: candidate(0, 101), expected: 1 },
     { actual: candidate(3, 11), expected: 8 },
     { actual: candidate(100, 101), expected: 1 },
     { actual: candidate(30, 5), expected: 4 },
     { actual: candidate(31, 5), expected: 3 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
