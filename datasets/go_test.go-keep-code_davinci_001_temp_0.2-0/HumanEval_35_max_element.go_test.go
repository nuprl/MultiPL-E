package max_element_test

import (
    "testing"
    "fmt"
)

// Return maximum element in the list.
// >>> max_element([1, 2, 3])
// 3
// >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// 123
func max_element(l []int) int {
    var max int = l[0]
    for _, v := range l {
        if v > max {
            max = v
        }
    }
    return max
}


func TestMax_Element(t *testing.T) {
  candidate := max_element
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 3}), expected: 3 },
     { actual: candidate([]int{5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10}), expected: 124 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
