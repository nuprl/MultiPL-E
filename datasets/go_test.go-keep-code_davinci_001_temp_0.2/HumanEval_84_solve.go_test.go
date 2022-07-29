package solve_test

import (
    "testing"
    "fmt"
)

// Given a positive integer N, return the total sum of its digits in binary.
// Example
// For N = 1000, the sum of digits will be 1 the output should be "1".
// For N = 150, the sum of digits will be 6 the output should be "110".
// For N = 147, the sum of digits will be 12 the output should be "1100".
// Variables:
// @N integer
// Constraints: 0 ≤ N ≤ 10000.
// Output:
// a string of binary number
func solve(N int) string {
    var sum int
    for N > 0 {
        sum += N % 2
        N /= 2
    }
    return fmt.Sprintf("%d", sum)
}


func TestSolve(t *testing.T) {
  candidate := solve
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(1000), expected: "1" },
     { actual: candidate(150), expected: "110" },
     { actual: candidate(147), expected: "1100" },
     { actual: candidate(333), expected: "1001" },
     { actual: candidate(963), expected: "10010" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
