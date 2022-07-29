package order_by_points_test

import (
    "testing"
    "fmt"
)

// Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
// For example:
// >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
// >>> order_by_points([]) == []
func order_by_points(nums []int) []int {
    // Write your code here
    return nums
}


func TestOrder_By_Points(t *testing.T) {
  candidate := order_by_points
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 11, -1, -11, -12}), expected: []int{-1, -11, 1, -12, 11} },
     { actual: candidate([]int{1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46}), expected: []int{0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457} },
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{1, -11, -32, 43, 54, -98, 2, -3}), expected: []int{-3, -32, -98, -11, 1, 2, 43, 54} },
     { actual: candidate([]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}), expected: []int{1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9} },
     { actual: candidate([]int{0, 6, 6, -76, -21, 23, 4}), expected: []int{-76, -21, 0, 4, 23, 6, 6} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
