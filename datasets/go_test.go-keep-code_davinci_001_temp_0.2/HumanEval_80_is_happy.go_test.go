package is_happy_test

import (
    "testing"
    "fmt"
)

// You are given a string s.
// Your task is to check if the string is happy or not.
// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
// For example:
// is_happy(a) => False
// is_happy(aa) => False
// is_happy(abcd) => True
// is_happy(aabb) => False
// is_happy(adb) => True
// is_happy(xyy) => False
func is_happy(s string) bool {
    // Write your code here
    return false
}


func TestIs_Happy(t *testing.T) {
  candidate := is_happy
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("a"), expected: false },
     { actual: candidate("aa"), expected: false },
     { actual: candidate("abcd"), expected: true },
     { actual: candidate("aabb"), expected: false },
     { actual: candidate("adb"), expected: true },
     { actual: candidate("xyy"), expected: false },
     { actual: candidate("iopaxpoi"), expected: true },
     { actual: candidate("iopaxioi"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
