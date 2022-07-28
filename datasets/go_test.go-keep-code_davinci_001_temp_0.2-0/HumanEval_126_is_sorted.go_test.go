package is_sorted_test

import (
    "testing"
    "fmt"
)

// Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return False. Assume no negative numbers and only integers.
// Examples
// is_sorted([5]) ➞ True
// is_sorted([1, 2, 3, 4, 5]) ➞ True
// is_sorted([1, 3, 2, 4, 5]) ➞ False
// is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
// is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
// is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
// is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
// is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
func is_sorted(lst []int) bool {
    for i := 0; i < len(lst) - 1; i++ {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
}


func TestIs_Sorted(t *testing.T) {
  candidate := is_sorted
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{5}), expected: true },
     { actual: candidate([]int{1, 2, 3, 4, 5}), expected: true },
     { actual: candidate([]int{1, 3, 2, 4, 5}), expected: false },
     { actual: candidate([]int{1, 2, 3, 4, 5, 6}), expected: true },
     { actual: candidate([]int{1, 2, 3, 4, 5, 6, 7}), expected: true },
     { actual: candidate([]int{1, 3, 2, 4, 5, 6, 7}), expected: false },
     { actual: candidate([]int{}), expected: true },
     { actual: candidate([]int{1}), expected: true },
     { actual: candidate([]int{3, 2, 1}), expected: false },
     { actual: candidate([]int{1, 2, 2, 2, 3, 4}), expected: false },
     { actual: candidate([]int{1, 2, 3, 3, 3, 4}), expected: false },
     { actual: candidate([]int{1, 2, 2, 3, 3, 4}), expected: true },
     { actual: candidate([]int{1, 2, 3, 4}), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
