package common_test

import (
    "testing"
    "fmt"
)

// Return sorted unique common elements for two lists.
// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> common([5, 3, 2, 8], [3, 2])
// [2, 3]
func common(l1 []int, l2 []int) []int {
    var common []int
    for _, v1 := range l1 {
        for _, v2 := range l2 {
            if v1 == v2 {
                common = append(common, v1)
            }
        }
    }
    return common
}


func TestCommon(t *testing.T) {
  candidate := common
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 4, 3, 34, 653, 2, 5}, []int{5, 7, 1, 5, 9, 653, 121}), expected: []int{1, 5, 653} },
     { actual: candidate([]int{5, 3, 2, 8}, []int{3, 2}), expected: []int{2, 3} },
     { actual: candidate([]int{4, 3, 2, 8}, []int{3, 2, 4}), expected: []int{2, 3, 4} },
     { actual: candidate([]int{4, 3, 2, 8}, []int{}), expected: []int{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
