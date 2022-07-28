package specialFilter_test

import (
    "testing"
    "fmt"
)

// Write a function that takes an array of numbers as input and returns 
// the number of elements in the array that are greater than 10 and both 
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// specialFilter([15, -73, 14, -15]) => 1 
// specialFilter([33, -2, -3, 45, 21, 109]) => 2
func specialFilter(nums []int) int {
    // Write your code here
    return 0
}


func TestSpecialfilter(t *testing.T) {
  candidate := specialFilter
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{5, -2, 1, -5}), expected: 0 },
     { actual: candidate([]int{15, -73, 14, -15}), expected: 1 },
     { actual: candidate([]int{33, -2, -3, 45, 21, 109}), expected: 2 },
     { actual: candidate([]int{43, -12, 93, 125, 121, 109}), expected: 4 },
     { actual: candidate([]int{71, -2, -33, 75, 21, 19}), expected: 3 },
     { actual: candidate([]int{1}), expected: 0 },
     { actual: candidate([]int{}), expected: 0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
