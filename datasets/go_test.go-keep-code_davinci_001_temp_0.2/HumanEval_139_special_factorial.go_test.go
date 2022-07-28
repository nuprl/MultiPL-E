package special_factorial_test

import (
    "testing"
    "fmt"
)

// The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
// For example:
// >>> special_factorial(4)
// 288
// The function will receive an integer as input and should return the special
// factorial of this integer.
func special_factorial(n int) int {
    if n == 0 {
        return 1
    }
    return n * special_factorial(n - 1)
}


func TestSpecial_Factorial(t *testing.T) {
  candidate := special_factorial
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(4), expected: 288 },
     { actual: candidate(5), expected: 34560 },
     { actual: candidate(7), expected: 125411328000 },
     { actual: candidate(1), expected: 1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
