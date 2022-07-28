package monotonic_test

import (
    "testing"
    "fmt"
)

// Return True is list elements are monotonically increasing or decreasing.
// >>> monotonic([1, 2, 4, 20])
// True
// >>> monotonic([1, 20, 4, 10])
// False
// >>> monotonic([4, 1, 0, -10])
// True
func monotonic(l []int) bool {
    if len(l) <= 1 {
        return true
    }

    var flag bool
    for i := 0; i < len(l) - 1; i++ {
        if l[i] < l[i + 1] {
            if flag {
                return false
            }
            flag = true
        } else if l[i] > l[i + 1] {
            if flag {
                return false
            }
            flag = true
        }
    }
    return true
}


func TestMonotonic(t *testing.T) {
  candidate := monotonic
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 4, 10}), expected: true },
     { actual: candidate([]int{1, 2, 4, 20}), expected: true },
     { actual: candidate([]int{1, 20, 4, 10}), expected: false },
     { actual: candidate([]int{4, 1, 0, -10}), expected: true },
     { actual: candidate([]int{4, 1, 1, 0}), expected: true },
     { actual: candidate([]int{1, 2, 3, 2, 5, 60}), expected: false },
     { actual: candidate([]int{1, 2, 3, 4, 5, 60}), expected: true },
     { actual: candidate([]int{9, 9, 9, 9}), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
