package make_palindrome_test

import (
    "testing"
    "fmt"
)

// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
func make_palindrome(myString string) string {
    if len(myString) == 0 {
        return ""
    }
    var palindrome string
    for i := len(myString) - 1; i >= 0; i-- {
        if isPalindrome(myString[i:]) {
            palindrome = myString[:i] + myString
            break
        }
    }
    if len(palindrome) == 0 {
        palindrome = myString + string(myString[0]) + reverse(myString[1:])
    }
    return palindrome
}


func TestMake_Palindrome(t *testing.T) {
  candidate := make_palindrome
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: "" },
     { actual: candidate("x"), expected: "x" },
     { actual: candidate("xyz"), expected: "xyzyx" },
     { actual: candidate("xyx"), expected: "xyx" },
     { actual: candidate("jerry"), expected: "jerryrrej" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
