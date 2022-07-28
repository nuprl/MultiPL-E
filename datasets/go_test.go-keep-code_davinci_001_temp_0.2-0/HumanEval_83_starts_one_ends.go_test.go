package starts_one_ends_test

import (
    "testing"
    "fmt"
)

// Given a positive integer n, return the count of the numbers of n-digit
// positive integers that start or end with 1.
func starts_one_ends(n int) int {
    return 0
}


func TestStarts_One_Ends(t *testing.T) {
  candidate := starts_one_ends
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(1), expected: 1 },
     { actual: candidate(2), expected: 18 },
     { actual: candidate(3), expected: 180 },
     { actual: candidate(4), expected: 1800 },
     { actual: candidate(5), expected: 18000 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
