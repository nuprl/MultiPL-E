package incr_list_test

import (
    "testing"
    "fmt"
)

// Return list with elements incremented by 1.
// >>> incr_list([1, 2, 3])
// [2, 3, 4]
// >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [6, 4, 6, 3, 4, 4, 10, 1, 124]
func incr_list(l []int) []int {
    for i := 0; i < len(l); i++ {
        l[i]++
    }
    return l
}


func TestIncr_List(t *testing.T) {
  candidate := incr_list
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{3, 2, 1}), expected: []int{4, 3, 2} },
     { actual: candidate([]int{5, 2, 5, 2, 3, 3, 9, 0, 123}), expected: []int{6, 3, 6, 3, 4, 4, 10, 1, 124} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
