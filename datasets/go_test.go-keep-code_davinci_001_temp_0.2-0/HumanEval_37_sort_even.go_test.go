package sort_even_test

import (
    "testing"
    "fmt"
)

// This function takes a list l and returns a list l' such that
// l' is identical to l in the odd indicies, while its values at the even indicies are equal
// to the values of the even indicies of l, but sorted.
// >>> sort_even([1, 2, 3])
// [1, 2, 3]
// >>> sort_even([5, 6, 3, 4])
// [3, 6, 5, 4]
func sort_even(l []int) []int {
    // Your code here
    return l
}


func TestSort_Even(t *testing.T) {
  candidate := sort_even
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 3}), expected: []int{1, 2, 3} },
     { actual: candidate([]int{5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}), expected: []int{-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123} },
     { actual: candidate([]int{5, 8, -12, 4, 23, 2, 3, 11, 12, -10}), expected: []int{-12, 8, 3, 4, 5, 2, 12, 11, 23, -10} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
