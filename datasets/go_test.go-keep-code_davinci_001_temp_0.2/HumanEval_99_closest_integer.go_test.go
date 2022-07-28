package closest_integer_test

import (
    "testing"
    "fmt"
)

// Create a function that takes a value (string) representing a number
// and returns the closest integer to it. If the number is equidistant
// from two integers, round it away from zero.
// Examples
// >>> closest_integer("10")
// 10
// >>> closest_integer("15.3")
// 15
// Note:
// Rounding away from zero means that if the given number is equidistant
// from two integers, the one you should return is the one that is the
// farthest from zero. For example closest_integer("14.5") should
// return 15 and closest_integer("-14.5") should return -15.
func closest_integer(value string) int {
    // your code here
    return 0
}


func TestClosest_Integer(t *testing.T) {
  candidate := closest_integer
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("10"), expected: 10 },
     { actual: candidate("14.5"), expected: 15 },
     { actual: candidate("-15.5"), expected: -16 },
     { actual: candidate("15.3"), expected: 15 },
     { actual: candidate("0"), expected: 0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
