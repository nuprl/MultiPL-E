package count_nums_test

import (
    "testing"
    "fmt"
)

// Write a function count_nums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> count_nums([]) == 0
// >>> count_nums([-1, 11, -11]) == 1
// >>> count_nums([1, 1, 2]) == 3
func count_nums(arr []int) int {
    var count int
    for _, v := range arr {
        if sum_digits(v) > 0 {
            count++
        }
    }
    return count
}


func TestCount_Nums(t *testing.T) {
  candidate := count_nums
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: 0 },
     { actual: candidate([]int{-1, -2, 0}), expected: 0 },
     { actual: candidate([]int{1, 1, 2, -2, 3, 4, 5}), expected: 6 },
     { actual: candidate([]int{1, 6, 9, -6, 0, 1, 5}), expected: 5 },
     { actual: candidate([]int{1, 100, 98, -7, 1, -1}), expected: 4 },
     { actual: candidate([]int{12, 23, 34, -45, -56, 0}), expected: 5 },
     { actual: candidate([]int{0, 1}), expected: 1 },
     { actual: candidate([]int{1}), expected: 1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
