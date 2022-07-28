package smallest_change_test

import (
    "testing"
    "fmt"
)

// Given an array arr of integers, find the minimum number of elements that
// need to be changed to make the array palindromic. A palindromic array is an array that
// is read the same backwards and forwards. In one change, you can change one element to any other element.
// For example:
// smallest_change([1,2,3,5,4,7,9,6]) == 4
// smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
// smallest_change([1, 2, 3, 2, 1]) == 0
func smallest_change(arr []int) int {
    // Write your code here
    return 0
}


func TestSmallest_Change(t *testing.T) {
  candidate := smallest_change
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 3, 5, 4, 7, 9, 6}), expected: 4 },
     { actual: candidate([]int{1, 2, 3, 4, 3, 2, 2}), expected: 1 },
     { actual: candidate([]int{1, 4, 2}), expected: 1 },
     { actual: candidate([]int{1, 4, 4, 2}), expected: 1 },
     { actual: candidate([]int{1, 2, 3, 2, 1}), expected: 0 },
     { actual: candidate([]int{3, 1, 1, 3}), expected: 0 },
     { actual: candidate([]int{1}), expected: 0 },
     { actual: candidate([]int{0, 1}), expected: 1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
