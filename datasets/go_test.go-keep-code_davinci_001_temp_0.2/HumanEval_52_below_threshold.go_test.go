package below_threshold_test

import (
    "testing"
    "fmt"
)

// Return True if all numbers in the list l are below threshold t.
// >>> below_threshold([1, 2, 4, 10], 100)
// True
// >>> below_threshold([1, 20, 4, 10], 5)
// False
func below_threshold(l []int, t int) bool {
    for _, v := range l {
        if v > t {
            return false
        }
    }
    return true
}


func TestBelow_Threshold(t *testing.T) {
  candidate := below_threshold
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 4, 10}, 100), expected: true },
     { actual: candidate([]int{1, 20, 4, 10}, 5), expected: false },
     { actual: candidate([]int{1, 20, 4, 10}, 21), expected: true },
     { actual: candidate([]int{1, 20, 4, 10}, 22), expected: true },
     { actual: candidate([]int{1, 8, 4, 10}, 11), expected: true },
     { actual: candidate([]int{1, 8, 4, 10}, 10), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
