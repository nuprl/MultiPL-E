package generate_integers_test

import (
    "testing"
    "fmt"
)

// Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
// For example:
// generate_integers(2, 8) => [2, 4, 6, 8]
// generate_integers(8, 2) => [2, 4, 6, 8]
// generate_integers(10, 14) => []
func generate_integers(a int, b int) []int {
    var result []int
    for i := a; i <= b; i++ {
        if i % 2 == 0 {
            result = append(result, i)
        }
    }
    return result
}


func TestGenerate_Integers(t *testing.T) {
  candidate := generate_integers
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(2, 10), expected: []int{2, 4, 6, 8} },
     { actual: candidate(10, 2), expected: []int{2, 4, 6, 8} },
     { actual: candidate(132, 2), expected: []int{2, 4, 6, 8} },
     { actual: candidate(17, 89), expected: []int{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
