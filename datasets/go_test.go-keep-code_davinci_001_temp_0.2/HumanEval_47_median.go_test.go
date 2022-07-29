package median_test

import (
    "testing"
    "fmt"
)

// Return median of elements in the list l.
// >>> median([3, 1, 2, 4, 5])
// 3
// >>> median([-10, 4, 6, 1000, 10, 20])
// 15.0
func median(l []int) float64 {
    // Write your code here.
    return 0.0
}


func TestMedian(t *testing.T) {
  candidate := median
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{3, 1, 2, 4, 5}), expected: 3 },
     { actual: candidate([]int{-10, 4, 6, 1000, 10, 20}), expected: 8.0 },
     { actual: candidate([]int{5}), expected: 5 },
     { actual: candidate([]int{6, 5}), expected: 5.5 },
     { actual: candidate([]int{8, 1, 3, 9, 9, 2, 7}), expected: 7 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
