package can_arrange_test

import (
    "testing"
    "fmt"
)

// Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
func can_arrange(arr []int) int {
    // Write your code here
    return -1
}


func TestCan_Arrange(t *testing.T) {
  candidate := can_arrange
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 4, 3, 5}), expected: 3 },
     { actual: candidate([]int{1, 2, 4, 5}), expected: -1 },
     { actual: candidate([]int{1, 4, 2, 5, 6, 7, 8, 9, 10}), expected: 2 },
     { actual: candidate([]int{4, 8, 5, 7, 3}), expected: 4 },
     { actual: candidate([]int{}), expected: -1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
