package same_chars_test

import (
    "testing"
    "fmt"
)

// Check if two words have the same characters.
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
// True
// >>> same_chars('abcd', 'dddddddabc')
// True
// >>> same_chars('dddddddabc', 'abcd')
// True
// >>> same_chars('eabcd', 'dddddddabc')
// False
// >>> same_chars('abcd', 'dddddddabce')
// False
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
// False
func same_chars(s0 string, s1 string) bool {
    if len(s0) != len(s1) {
        return false
    }
    for _, c := range s0 {
        if !strings.Contains(s1, string(c)) {
            return false
        }
    }
    return true
}


func TestSame_Chars(t *testing.T) {
  candidate := same_chars
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("eabcdzzzz", "dddzzzzzzzddeddabc"), expected: true },
     { actual: candidate("abcd", "dddddddabc"), expected: true },
     { actual: candidate("dddddddabc", "abcd"), expected: true },
     { actual: candidate("eabcd", "dddddddabc"), expected: false },
     { actual: candidate("abcd", "dddddddabcf"), expected: false },
     { actual: candidate("eabcdzzzz", "dddzzzzzzzddddabc"), expected: false },
     { actual: candidate("aabb", "aaccc"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
