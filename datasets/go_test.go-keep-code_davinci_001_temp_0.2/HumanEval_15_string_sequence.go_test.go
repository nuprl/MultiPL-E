package string_sequence_test

import (
    "testing"
    "fmt"
)

// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
// >>> string_sequence(0)
// '0'
// >>> string_sequence(5)
// '0 1 2 3 4 5'
func string_sequence(n int) string {
    var result string
    for i := 0; i <= n; i++ {
        result += fmt.Sprintf("%d ", i)
    }
    return result
}


func TestString_Sequence(t *testing.T) {
  candidate := string_sequence
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(0), expected: "0" },
     { actual: candidate(3), expected: "0 1 2 3" },
     { actual: candidate(10), expected: "0 1 2 3 4 5 6 7 8 9 10" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
