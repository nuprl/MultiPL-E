package string_xor_test

import (
    "testing"
    "fmt"
)

// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
func string_xor(a string, b string) string {
    var result string
    for i := 0; i < len(a); i++ {
        if a[i] == b[i] {
            result += "0"
        } else {
            result += "1"
        }
    }
    return result
}


func TestString_Xor(t *testing.T) {
  candidate := string_xor
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("111000", "101010"), expected: "010010" },
     { actual: candidate("1", "1"), expected: "0" },
     { actual: candidate("0101", "0000"), expected: "0101" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
