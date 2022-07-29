package strlen_test

import (
    "testing"
    "fmt"
)

// Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
func strlen(myString string) int {
    return len(myString)
}


func TestStrlen(t *testing.T) {
  candidate := strlen
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: 0 },
     { actual: candidate("x"), expected: 1 },
     { actual: candidate("asdasnakj"), expected: 9 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
