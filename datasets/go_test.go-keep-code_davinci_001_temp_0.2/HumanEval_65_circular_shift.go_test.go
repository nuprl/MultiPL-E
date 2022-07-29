package circular_shift_test

import (
    "testing"
    "fmt"
)

// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
func circular_shift(x int, shift int) string {
    // TODO - you fill in here.
    return ""
}


func TestCircular_Shift(t *testing.T) {
  candidate := circular_shift
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(100, 2), expected: "001" },
     { actual: candidate(12, 2), expected: "12" },
     { actual: candidate(97, 8), expected: "79" },
     { actual: candidate(12, 1), expected: "21" },
     { actual: candidate(11, 101), expected: "11" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
