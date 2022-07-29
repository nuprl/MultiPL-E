package add_test

import (
    "testing"
    "fmt"
)

// Add two numbers x and y
// >>> add(2, 3)
// 5
// >>> add(5, 7)
// 12
func add(x int, y int) int {
    return x + y
}


func TestAdd(t *testing.T) {
  candidate := add
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(0, 1), expected: 1 },
     { actual: candidate(1, 0), expected: 1 },
     { actual: candidate(2, 3), expected: 5 },
     { actual: candidate(5, 7), expected: 12 },
     { actual: candidate(7, 5), expected: 12 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
