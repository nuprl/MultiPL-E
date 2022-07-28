package is_simple_power_test

import (
    "testing"
    "fmt"
)

// Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// is_simple_power(1, 4) => true
// is_simple_power(2, 2) => true
// is_simple_power(8, 2) => true
// is_simple_power(3, 2) => false
// is_simple_power(3, 1) => false
// is_simple_power(5, 3) => false
func is_simple_power(x int, n int) bool {
    if x == n {
        return true
    }
    if x % n != 0 {
        return false
    }
    return is_simple_power(x / n, n)
}


func TestIs_Simple_Power(t *testing.T) {
  candidate := is_simple_power
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(16, 2), expected: true },
     { actual: candidate(143214, 16), expected: false },
     { actual: candidate(4, 2), expected: true },
     { actual: candidate(9, 3), expected: true },
     { actual: candidate(16, 4), expected: true },
     { actual: candidate(24, 2), expected: false },
     { actual: candidate(128, 4), expected: false },
     { actual: candidate(12, 6), expected: false },
     { actual: candidate(1, 1), expected: true },
     { actual: candidate(1, 12), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
