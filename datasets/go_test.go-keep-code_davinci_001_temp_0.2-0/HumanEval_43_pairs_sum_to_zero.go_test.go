package pairs_sum_to_zero_test

import (
    "testing"
    "fmt"
)

// pairs_sum_to_zero takes a list of integers as an input.
// it returns True if there are two distinct elements in the list that
// sum to zero, and False otherwise.
// >>> pairs_sum_to_zero([1, 3, 5, 0])
// False
// >>> pairs_sum_to_zero([1, 3, -2, 1])
// False
// >>> pairs_sum_to_zero([1, 2, 3, 7])
// False
// >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
// True
// >>> pairs_sum_to_zero([1])
// False
func pairs_sum_to_zero(l []int) bool {
    // TODO: implement me
    return false
}


func TestPairs_Sum_To_Zero(t *testing.T) {
  candidate := pairs_sum_to_zero
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 3, 5, 0}), expected: false },
     { actual: candidate([]int{1, 3, -2, 1}), expected: false },
     { actual: candidate([]int{1, 2, 3, 7}), expected: false },
     { actual: candidate([]int{2, 4, -5, 3, 5, 7}), expected: true },
     { actual: candidate([]int{1}), expected: false },
     { actual: candidate([]int{-3, 9, -1, 3, 2, 30}), expected: true },
     { actual: candidate([]int{-3, 9, -1, 3, 2, 31}), expected: true },
     { actual: candidate([]int{-3, 9, -1, 4, 2, 30}), expected: false },
     { actual: candidate([]int{-3, 9, -1, 4, 2, 31}), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
