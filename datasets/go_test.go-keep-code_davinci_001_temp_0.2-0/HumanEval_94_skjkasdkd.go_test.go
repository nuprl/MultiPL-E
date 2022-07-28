package skjkasdkd_test

import (
    "testing"
    "fmt"
)

// You are given a list of integers.
// You need to find the largest prime value and return the sum of its digits.
// Examples:
// For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
// For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
// For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
// For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
// For lst = [0,81,12,3,1,21] the output should be 3
// For lst = [0,8,1,2,1,7] the output should be 7
func skjkasdkd(lst []int) int {
    // Write your code here
    return 0
}


func TestSkjkasdkd(t *testing.T) {
  candidate := skjkasdkd
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3}), expected: 10 },
     { actual: candidate([]int{1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1}), expected: 25 },
     { actual: candidate([]int{1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3}), expected: 13 },
     { actual: candidate([]int{0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6}), expected: 11 },
     { actual: candidate([]int{0, 81, 12, 3, 1, 21}), expected: 3 },
     { actual: candidate([]int{0, 8, 1, 2, 1, 7}), expected: 7 },
     { actual: candidate([]int{8191}), expected: 19 },
     { actual: candidate([]int{8191, 123456, 127, 7}), expected: 19 },
     { actual: candidate([]int{127, 97, 8192}), expected: 10 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
