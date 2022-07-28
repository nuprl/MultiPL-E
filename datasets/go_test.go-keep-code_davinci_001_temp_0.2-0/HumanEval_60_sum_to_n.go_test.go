package sum_to_n_test

import (
    "testing"
    "fmt"
)

// sum_to_n is a function that sums numbers from 1 to n.
// >>> sum_to_n(30)
// 465
// >>> sum_to_n(100)
// 5050
// >>> sum_to_n(5)
// 15
// >>> sum_to_n(10)
// 55
// >>> sum_to_n(1)
// 1
func sum_to_n(n int) int {
    // Your code here.
    return n * (n + 1) / 2
}


func TestSum_To_N(t *testing.T) {
  candidate := sum_to_n
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(1), expected: 1 },
     { actual: candidate(6), expected: 21 },
     { actual: candidate(11), expected: 66 },
     { actual: candidate(30), expected: 465 },
     { actual: candidate(100), expected: 5050 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
