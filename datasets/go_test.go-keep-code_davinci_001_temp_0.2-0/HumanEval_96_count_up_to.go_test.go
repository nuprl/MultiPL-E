package count_up_to_test

import (
    "testing"
    "fmt"
)

// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// count_up_to(5) => [2,3]
// count_up_to(11) => [2,3,5,7]
// count_up_to(0) => []
// count_up_to(20) => [2,3,5,7,11,13,17,19]
// count_up_to(1) => []
// count_up_to(18) => [2,3,5,7,11,13,17]
func count_up_to(n int) []int {
    return []int{}
}


func TestCount_Up_To(t *testing.T) {
  candidate := count_up_to
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5), expected: []int{2, 3} },
     { actual: candidate(6), expected: []int{2, 3, 5} },
     { actual: candidate(7), expected: []int{2, 3, 5} },
     { actual: candidate(10), expected: []int{2, 3, 5, 7} },
     { actual: candidate(0), expected: []int{} },
     { actual: candidate(22), expected: []int{2, 3, 5, 7, 11, 13, 17, 19} },
     { actual: candidate(1), expected: []int{} },
     { actual: candidate(18), expected: []int{2, 3, 5, 7, 11, 13, 17} },
     { actual: candidate(47), expected: []int{2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43} },
     { actual: candidate(101), expected: []int{2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
