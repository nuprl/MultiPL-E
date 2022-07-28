package get_positive_test

import (
    "testing"
    "fmt"
)

// Return only positive numbers in the list.
// >>> get_positive([-1, 2, -4, 5, 6])
// [2, 5, 6]
// >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// [5, 3, 2, 3, 9, 123, 1]
func get_positive(l []int) []int {
    var result []int
    for _, v := range l {
        if v > 0 {
            result = append(result, v)
        }
    }
    return result
}


func TestGet_Positive(t *testing.T) {
  candidate := get_positive
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{-1, -2, 4, 5, 6}), expected: []int{4, 5, 6} },
     { actual: candidate([]int{5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}), expected: []int{5, 3, 2, 3, 3, 9, 123, 1} },
     { actual: candidate([]int{-1, -2}), expected: []int{} },
     { actual: candidate([]int{}), expected: []int{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
