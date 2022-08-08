package largest_smallest_integers_test

import (
    "testing"
    "fmt"
)

// Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as None.
// Examples:
// largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
// largest_smallest_integers([]) == (None, None)
// largest_smallest_integers([0]) == (None, None)
func largest_smallest_integers(lst []int) []interface{} {
    var max, min int
    var max_idx, min_idx int
    var max_found, min_found bool
    var result []interface{}

    for idx, val := range lst {
        if val > 0 {
            if !min_found {
                min = val
                min_idx = idx
                min_found = true
            } else if val < min {
                min = val
                min_idx = idx
            }
        } else if val < 0 {
            if !max_found {
                max = val
                max_idx = idx
                max_found = true
            } else if val > max {
                max = val
                max_idx = idx
            }
        }
    }

    if max_found {
        result = append(result, max)
    } else {
        result = append(result, None)
    }

    if min_found {
        result = append(result, min)
    } else {
        result = append(result, None)
    }

    return result
}


func TestLargest_Smallest_Integers(t *testing.T) {
  candidate := largest_smallest_integers
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{2, 4, 1, 3, 5, 7}), expected: []interface{}{None, 1} },
     { actual: candidate([]int{2, 4, 1, 3, 5, 7, 0}), expected: []interface{}{None, 1} },
     { actual: candidate([]int{1, 3, 2, 4, 5, 6, -2}), expected: []interface{}{-2, 1} },
     { actual: candidate([]int{4, 5, 3, 6, 2, 7, -7}), expected: []interface{}{-7, 2} },
     { actual: candidate([]int{7, 3, 8, 4, 9, 2, 5, -9}), expected: []interface{}{-9, 2} },
     { actual: candidate([]int{}), expected: []interface{}{None, None} },
     { actual: candidate([]int{0}), expected: []interface{}{None, None} },
     { actual: candidate([]int{-1, -3, -5, -6}), expected: []interface{}{-1, None} },
     { actual: candidate([]int{-1, -3, -5, -6, 0}), expected: []interface{}{-1, None} },
     { actual: candidate([]int{-6, -4, -4, -3, 1}), expected: []interface{}{-3, 1} },
     { actual: candidate([]int{-6, -4, -4, -3, -100, 1}), expected: []interface{}{-3, 1} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
