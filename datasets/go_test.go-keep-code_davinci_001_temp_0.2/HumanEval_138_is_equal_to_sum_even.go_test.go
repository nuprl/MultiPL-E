package is_equal_to_sum_even_test

import (
    "testing"
    "fmt"
)

// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// is_equal_to_sum_even(4) == False
// is_equal_to_sum_even(6) == False
// is_equal_to_sum_even(8) == True
func is_equal_to_sum_even(n int) bool {
    return false
}


func TestIs_Equal_To_Sum_Even(t *testing.T) {
  candidate := is_equal_to_sum_even
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(4), expected: false },
     { actual: candidate(6), expected: false },
     { actual: candidate(8), expected: true },
     { actual: candidate(10), expected: true },
     { actual: candidate(11), expected: false },
     { actual: candidate(12), expected: true },
     { actual: candidate(13), expected: false },
     { actual: candidate(16), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
