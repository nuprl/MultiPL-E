package triples_sum_to_zero_test

import (
    "testing"
    "fmt"
)

// triples_sum_to_zero takes a list of integers as an input.
// it returns True if there are three distinct elements in the list that
// sum to zero, and False otherwise.
// >>> triples_sum_to_zero([1, 3, 5, 0])
// False
// >>> triples_sum_to_zero([1, 3, -2, 1])
// True
// >>> triples_sum_to_zero([1, 2, 3, 7])
// False
// >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
// True
// >>> triples_sum_to_zero([1])
// False
func triples_sum_to_zero(l []int) bool {
    // your code here
    return false
}


func TestTriples_Sum_To_Zero(t *testing.T) {
  candidate := triples_sum_to_zero
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 3, 5, 0}), expected: false },
     { actual: candidate([]int{1, 3, 5, -1}), expected: false },
     { actual: candidate([]int{1, 3, -2, 1}), expected: true },
     { actual: candidate([]int{1, 2, 3, 7}), expected: false },
     { actual: candidate([]int{1, 2, 5, 7}), expected: false },
     { actual: candidate([]int{2, 4, -5, 3, 9, 7}), expected: true },
     { actual: candidate([]int{1}), expected: false },
     { actual: candidate([]int{1, 3, 5, -100}), expected: false },
     { actual: candidate([]int{100, 3, 5, -100}), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
