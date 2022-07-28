package greatest_common_divisor_test

import (
    "testing"
    "fmt"
)

// Return a greatest common divisor of two integers a and b
// >>> greatest_common_divisor(3, 5)
// 1
// >>> greatest_common_divisor(25, 15)
// 5
func greatest_common_divisor(a int, b int) int {
    if a < b {
        return greatest_common_divisor(b, a)
    }
    if b == 0 {
        return a
    }
    return greatest_common_divisor(b, a % b)
}


func TestGreatest_Common_Divisor(t *testing.T) {
  candidate := greatest_common_divisor
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3, 7), expected: 1 },
     { actual: candidate(10, 15), expected: 5 },
     { actual: candidate(49, 14), expected: 7 },
     { actual: candidate(144, 60), expected: 12 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
