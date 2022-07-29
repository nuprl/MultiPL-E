package sort_array_test

import (
    "testing"
    "fmt"
)

// In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
// It must be implemented like this:
// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
func sort_array(arr []int) []int {
    var result []int
    for _, v := range arr {
        result = append(result, v)
    }
    for i := 0; i < len(result); i++ {
        for j := i + 1; j < len(result); j++ {
            if result[i] > result[j] {
                result[i], result[j] = result[j], result[i]
            }
        }
    }
    return result
}


func TestSort_Array(t *testing.T) {
  candidate := sort_array
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 5, 2, 3, 4}), expected: []int{1, 2, 4, 3, 5} },
     { actual: candidate([]int{-2, -3, -4, -5, -6}), expected: []int{-4, -2, -6, -5, -3} },
     { actual: candidate([]int{1, 0, 2, 3, 4}), expected: []int{0, 1, 2, 4, 3} },
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4}), expected: []int{2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77} },
     { actual: candidate([]int{3, 6, 44, 12, 32, 5}), expected: []int{32, 3, 5, 6, 12, 44} },
     { actual: candidate([]int{2, 4, 8, 16, 32}), expected: []int{2, 4, 8, 16, 32} },
     { actual: candidate([]int{2, 4, 8, 16, 32}), expected: []int{2, 4, 8, 16, 32} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
