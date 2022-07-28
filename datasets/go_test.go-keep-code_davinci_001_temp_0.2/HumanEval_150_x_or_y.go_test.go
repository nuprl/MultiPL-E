package x_or_y_test

import (
    "testing"
    "fmt"
)

// A simple program which should return the value of x if n is 
// a prime number and should return the value of y otherwise.
// Examples:
// for x_or_y(7, 34, 12) == 34
// for x_or_y(15, 8, 5) == 5
func x_or_y(n int, x int, y int) int {
    // your code here
    if n % 2 == 0 {
        return x
    } else {
        return y
    }
}


func TestX_Or_Y(t *testing.T) {
  candidate := x_or_y
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(7, 34, 12), expected: 34 },
     { actual: candidate(15, 8, 5), expected: 5 },
     { actual: candidate(3, 33, 5212), expected: 33 },
     { actual: candidate(1259, 3, 52), expected: 3 },
     { actual: candidate(7919, -1, 12), expected: -1 },
     { actual: candidate(3609, 1245, 583), expected: 583 },
     { actual: candidate(91, 56, 129), expected: 129 },
     { actual: candidate(6, 34, 1234), expected: 1234 },
     { actual: candidate(1, 2, 0), expected: 0 },
     { actual: candidate(2, 2, 0), expected: 2 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
