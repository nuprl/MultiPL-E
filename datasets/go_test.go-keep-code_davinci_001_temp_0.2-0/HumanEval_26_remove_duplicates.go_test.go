package remove_duplicates_test

import (
    "testing"
    "fmt"
)

// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> remove_duplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
func remove_duplicates(numbers []int) []int {
    // TODO: Write your code here
    return numbers
}


func TestRemove_Duplicates(t *testing.T) {
  candidate := remove_duplicates
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{1, 2, 3, 4}), expected: []int{1, 2, 3, 4} },
     { actual: candidate([]int{1, 2, 3, 2, 4, 3, 5}), expected: []int{1, 4, 5} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
