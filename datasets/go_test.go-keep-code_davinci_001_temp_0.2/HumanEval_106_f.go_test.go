package f_test

import (
    "testing"
    "fmt"
)

// Implement the function f that takes n as a parameter,
// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
// or the sum of numbers from 1 to i otherwise.
// i starts from 1.
// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
// Example:
// f(5) == [1, 2, 6, 24, 15]
func f(n int) []int {
    // your code here
    return nil
}


func TestF(t *testing.T) {
  candidate := f
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5), expected: []int{1, 2, 6, 24, 15} },
     { actual: candidate(7), expected: []int{1, 2, 6, 24, 15, 720, 28} },
     { actual: candidate(1), expected: []int{1} },
     { actual: candidate(3), expected: []int{1, 2, 6} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
