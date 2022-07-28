package sum_squares_test

import (
    "testing"
    "fmt"
)

// "
// This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
// multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
// change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
// Examples:
// For lst = [1,2,3] the output should be 6
// For lst = []  the output should be 0
// For lst = [-1,-5,2,-1,-5]  the output should be -126
func sum_squares(lst []int) int {
    var sum int
    for i, v := range lst {
        if i % 3 == 0 {
            sum += v * v
        } else if i % 4 == 0 && i % 3 != 0 {
            sum += v * v * v
        }
    }
    return sum
}


func TestSum_Squares(t *testing.T) {
  candidate := sum_squares
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 3}), expected: 6 },
     { actual: candidate([]int{1, 4, 9}), expected: 14 },
     { actual: candidate([]int{}), expected: 0 },
     { actual: candidate([]int{1, 1, 1, 1, 1, 1, 1, 1, 1}), expected: 9 },
     { actual: candidate([]int{-1, -1, -1, -1, -1, -1, -1, -1, -1}), expected: -3 },
     { actual: candidate([]int{0}), expected: 0 },
     { actual: candidate([]int{-1, -5, 2, -1, -5}), expected: -126 },
     { actual: candidate([]int{-56, -99, 1, 0, -2}), expected: 3030 },
     { actual: candidate([]int{-1, 0, 0, 0, 0, 0, 0, 0, -1}), expected: 0 },
     { actual: candidate([]int{-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37}), expected: -14196 },
     { actual: candidate([]int{-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10}), expected: -1448 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
