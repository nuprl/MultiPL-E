package simplify_test

import (
    "testing"
    "fmt"
)

// Your task is to implement a function that will simplify the expression
// x * n. The function returns True if x * n evaluates to a whole number and False
// otherwise. Both x and n, are string representation of a fraction, and have the following format,
// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
// You can assume that x, and n are valid fractions, and do not have zero as denominator.
// simplify("1/5", "5/1") = True
// simplify("1/6", "2/1") = False
// simplify("7/10", "10/2") = False
func simplify(x string, n string) bool {
    // Write your code here
    return false
}


func TestSimplify(t *testing.T) {
  candidate := simplify
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("1/5", "5/1"), expected: true },
     { actual: candidate("1/6", "2/1"), expected: false },
     { actual: candidate("5/1", "3/1"), expected: true },
     { actual: candidate("7/10", "10/2"), expected: false },
     { actual: candidate("2/10", "50/10"), expected: true },
     { actual: candidate("7/2", "4/2"), expected: true },
     { actual: candidate("11/6", "6/1"), expected: true },
     { actual: candidate("2/3", "5/2"), expected: false },
     { actual: candidate("5/2", "3/5"), expected: false },
     { actual: candidate("2/4", "8/4"), expected: true },
     { actual: candidate("2/4", "4/2"), expected: true },
     { actual: candidate("1/5", "5/1"), expected: true },
     { actual: candidate("1/5", "1/5"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
