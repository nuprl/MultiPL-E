package digits_test

import (
    "testing"
    "fmt"
)

// Given a positive integer n, return the product of the odd digits.
// Return 0 if all digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
func digits(n int) int {
    if n < 10 {
        return n
    }
    var result int
    for n > 0 {
        if n % 10 % 2 == 1 {
            result *= n % 10
        }
        n /= 10
    }
    return result
}


func TestDigits(t *testing.T) {
  candidate := digits
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5), expected: 5 },
     { actual: candidate(54), expected: 5 },
     { actual: candidate(120), expected: 1 },
     { actual: candidate(5014), expected: 5 },
     { actual: candidate(98765), expected: 315 },
     { actual: candidate(5576543), expected: 2625 },
     { actual: candidate(2468), expected: 0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
