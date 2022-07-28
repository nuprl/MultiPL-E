package sort_array_test

import (
    "testing"
    "fmt"
)

// Given an array of non-negative integers, return a copy of the given array after sorting,
// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
// or sort it in descending order if the sum( first index value, last index value) is even.
// Note:
// * don't change the given array.
// Examples:
// * sort_array([]) => []
// * sort_array([5]) => [5]
// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
func sort_array(array []int) []int {
    if len(array) == 0 {
        return array
    }
    sum := array[0] + array[len(array) - 1]
    if sum % 2 == 0 {
        return reverse(array)
    }
    return array
}


func TestSort_Array(t *testing.T) {
  candidate := sort_array
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{5}), expected: []int{5} },
     { actual: candidate([]int{2, 4, 3, 0, 1, 5}), expected: []int{0, 1, 2, 3, 4, 5} },
     { actual: candidate([]int{2, 4, 3, 0, 1, 5, 6}), expected: []int{6, 5, 4, 3, 2, 1, 0} },
     { actual: candidate([]int{2, 1}), expected: []int{1, 2} },
     { actual: candidate([]int{15, 42, 87, 32, 11, 0}), expected: []int{0, 11, 15, 32, 42, 87} },
     { actual: candidate([]int{21, 14, 23, 11}), expected: []int{23, 21, 14, 11} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
