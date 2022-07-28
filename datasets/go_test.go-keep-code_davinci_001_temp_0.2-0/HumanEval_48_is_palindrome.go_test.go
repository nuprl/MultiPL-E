package is_palindrome_test

import (
    "testing"
    "fmt"
)

// Checks if given string is a palindrome
// >>> is_palindrome('')
// True
// >>> is_palindrome('aba')
// True
// >>> is_palindrome('aaaaa')
// True
// >>> is_palindrome('zbcd')
// False
func is_palindrome(text string) bool {
    for i := 0; i < len(text)/2; i++ {
        if text[i] != text[len(text)-i-1] {
            return false
        }
    }
    return true
}


func TestIs_Palindrome(t *testing.T) {
  candidate := is_palindrome
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: true },
     { actual: candidate("aba"), expected: true },
     { actual: candidate("aaaaa"), expected: true },
     { actual: candidate("zbcd"), expected: false },
     { actual: candidate("xywyx"), expected: true },
     { actual: candidate("xywyz"), expected: false },
     { actual: candidate("xywzx"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
