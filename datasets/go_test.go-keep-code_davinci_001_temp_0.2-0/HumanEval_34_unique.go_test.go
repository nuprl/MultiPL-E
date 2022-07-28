package unique_test

import (
    "testing"
    "fmt"
)

// Return sorted unique elements in a list
// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [0, 2, 3, 5, 9, 123]
func unique(l []int) []int {
    // TODO: Implement me
    return []int{}
}


func TestUnique(t *testing.T) {
  candidate := unique
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{5, 3, 5, 2, 3, 3, 9, 0, 123}), expected: []int{0, 2, 3, 5, 9, 123} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
