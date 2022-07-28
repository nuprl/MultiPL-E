package truncate_number_test

import (
    "testing"
    "fmt"
)

// Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
// Return the decimal part of the number.
// >>> truncate_number(3.5)
// 0.5
func truncate_number(number float64) float64 {
    return number - float64(int(number))
}


func TestTruncate_Number(t *testing.T) {
  candidate := truncate_number
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3.5), expected: 0.5 },
     { actual: candidate(1.25), expected: 0.25 },
     { actual: candidate(123.0), expected: 0.0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
