package iscube_test

import (
    "testing"
    "fmt"
)

// Write a function that takes an integer a and returns True 
// if this ingeger is a cube of some integer number.
// Note: you may assume the input is always valid.
// Examples:
// iscube(1) ==> True
// iscube(2) ==> False
// iscube(-1) ==> True
// iscube(64) ==> True
// iscube(0) ==> True
// iscube(180) ==> False
func iscube(a int) bool {
    return a == 0 || (a > 0 && ((a % 1000) % (a % 100) % (a % 10) == 0))
}


func TestIscube(t *testing.T) {
  candidate := iscube
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(1), expected: true },
     { actual: candidate(2), expected: false },
     { actual: candidate(-1), expected: true },
     { actual: candidate(64), expected: true },
     { actual: candidate(180), expected: false },
     { actual: candidate(1000), expected: true },
     { actual: candidate(0), expected: true },
     { actual: candidate(1729), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
