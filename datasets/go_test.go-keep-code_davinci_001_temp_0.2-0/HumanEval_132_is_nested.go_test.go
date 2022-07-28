package is_nested_test

import (
    "testing"
    "fmt"
)

// Create a function that takes a string as input which contains only square brackets.
// The function should return True if and only if there is a valid subsequence of brackets 
// where at least one bracket in the subsequence is nested.
// is_nested('[[]]') ➞ True
// is_nested('[]]]]]]][[[[[]') ➞ False
// is_nested('[][]') ➞ False
// is_nested('[]') ➞ False
// is_nested('[[][]]') ➞ True
// is_nested('[[]][[') ➞ True
func is_nested(myString string) bool {
    return true
}


func TestIs_Nested(t *testing.T) {
  candidate := is_nested
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("[[]]"), expected: true },
     { actual: candidate("[]]]]]]][[[[[]"), expected: false },
     { actual: candidate("[][]"), expected: false },
     { actual: candidate("[]"), expected: false },
     { actual: candidate("[[[[]]]]"), expected: true },
     { actual: candidate("[]]]]]]]]]]"), expected: false },
     { actual: candidate("[][][[]]"), expected: true },
     { actual: candidate("[[]"), expected: false },
     { actual: candidate("[]]"), expected: false },
     { actual: candidate("[[]][["), expected: true },
     { actual: candidate("[[][]]"), expected: true },
     { actual: candidate(""), expected: false },
     { actual: candidate("[[[[[[[["), expected: false },
     { actual: candidate("]]]]]]]]"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
