package multiply_test

import (
    "testing"
    "fmt"
)

// Complete the function that takes two integers and returns 
// the product of their unit digits.
// Assume the input is always valid.
// Examples:
// multiply(148, 412) should return 16.
// multiply(19, 28) should return 72.
// multiply(2020, 1851) should return 0.
// multiply(14,-15) should return 20.
func multiply(a int, b int) int {
    // Write your code here.
    var result int
    if a < 0 {
        a = -a
    }
    if b < 0 {
        b = -b
    }
    for b > 0 {
        if b & 1 == 1 {
            result += a
        }
        a <<= 1
        b >>= 1
    }
    return result
}


func TestMultiply(t *testing.T) {
  candidate := multiply
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(148, 412), expected: 16 },
     { actual: candidate(19, 28), expected: 72 },
     { actual: candidate(2020, 1851), expected: 0 },
     { actual: candidate(14, -15), expected: 20 },
     { actual: candidate(76, 67), expected: 42 },
     { actual: candidate(17, 27), expected: 49 },
     { actual: candidate(0, 1), expected: 0 },
     { actual: candidate(0, 0), expected: 0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
