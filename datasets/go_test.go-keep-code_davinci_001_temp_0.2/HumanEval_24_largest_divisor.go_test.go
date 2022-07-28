package largest_divisor_test

import (
    "testing"
    "fmt"
)

// For a given number n, find the largest number that divides n evenly, smaller than n
// >>> largest_divisor(15)
// 5
func largest_divisor(n int) int {
    for i := n - 1; i > 0; i-- {
        if n % i == 0 {
            return i
        }
    }
    return n
}


func TestLargest_Divisor(t *testing.T) {
  candidate := largest_divisor
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3), expected: 1 },
     { actual: candidate(7), expected: 1 },
     { actual: candidate(10), expected: 5 },
     { actual: candidate(100), expected: 50 },
     { actual: candidate(49), expected: 7 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
