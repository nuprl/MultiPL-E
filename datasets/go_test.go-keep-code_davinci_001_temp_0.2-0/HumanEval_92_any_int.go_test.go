package any_int_test

import (
    "testing"
    "fmt"
)

// Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
// Examples
// any_int(5, 2, 7) ➞ True
// any_int(3, 2, 2) ➞ False
// any_int(3, -2, 1) ➞ True
// any_int(3.6, -2.2, 2) ➞ False
func any_int(x float64, y float64, z float64) bool {
    sum := x + y + z
    if (x == sum - y && x == sum - z) || (y == sum - x && y == sum - z) || (z == sum - x && z == sum - y) {
        return true
    }
    return false
}


func TestAny_Int(t *testing.T) {
  candidate := any_int
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(2, 3, 1), expected: true },
     { actual: candidate(2.5, 2, 3), expected: false },
     { actual: candidate(1.5, 5, 3.5), expected: false },
     { actual: candidate(2, 6, 2), expected: false },
     { actual: candidate(4, 2, 2), expected: true },
     { actual: candidate(2.2, 2.2, 2.2), expected: false },
     { actual: candidate(-4, 6, 2), expected: true },
     { actual: candidate(2, 1, 1), expected: true },
     { actual: candidate(3, 4, 7), expected: true },
     { actual: candidate(3.0, 4, 7), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
