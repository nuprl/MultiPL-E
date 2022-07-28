package cycpattern_check_test

import (
    "testing"
    "fmt"
)

// You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
// cycpattern_check("abcd","abd") => False
// cycpattern_check("hello","ell") => True
// cycpattern_check("whassup","psus") => False
// cycpattern_check("abab","baa") => True
// cycpattern_check("efef","eeff") => False
// cycpattern_check("himenss","simen") => True
func cycpattern_check(a string, b string) bool {
    for i := 0; i < len(a); i++ {
        if a[i] == b[0] {
            if i + len(b) > len(a) {
                return false
            }
            if a[i:i+len(b)] == b {
                return true
            }
        }
    }
    return false
}


func TestCycpattern_Check(t *testing.T) {
  candidate := cycpattern_check
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("xyzw", "xyw"), expected: false },
     { actual: candidate("yello", "ell"), expected: true },
     { actual: candidate("whattup", "ptut"), expected: false },
     { actual: candidate("efef", "fee"), expected: true },
     { actual: candidate("abab", "aabb"), expected: false },
     { actual: candidate("winemtt", "tinem"), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
