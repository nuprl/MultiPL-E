package unique_digits_test

import (
    "testing"
    "fmt"
)

// Given a list of positive integers x. return a sorted list of all 
// elements that hasn't any even digit.
// Note: Returned list should be sorted in increasing order.
// For example:
// >>> unique_digits([15, 33, 1422, 1])
// [1, 15, 33]
// >>> unique_digits([152, 323, 1422, 10])
// []
func unique_digits(x []int) []int {
    // Write your code here
    var result []int
    for _, v := range x {
        if !hasEvenDigit(v) {
            result = append(result, v)
        }
    }
    return result
}


func TestUnique_Digits(t *testing.T) {
  candidate := unique_digits
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{15, 33, 1422, 1}), expected: []int{1, 15, 33} },
     { actual: candidate([]int{152, 323, 1422, 10}), expected: []int{} },
     { actual: candidate([]int{12345, 2033, 111, 151}), expected: []int{111, 151} },
     { actual: candidate([]int{135, 103, 31}), expected: []int{31, 135} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
