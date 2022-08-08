package reverse_delete_test

import (
    "testing"
    "fmt"
)

// Task
// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
// then check if the result string is palindrome.
// A string is called palindrome if it reads the same backward as forward.
// You should return a tuple containing the result string and True/False for the check.
// Example
// For s = "abcde", c = "ae", the result should be ('bcd',False)
// For s = "abcdef", c = "b"  the result should be ('acdef',False)
// For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
func reverse_delete(s string, c string) []interface{} {
    // Write your code here
    var result string
    var isPalindrome bool
    for i := 0; i < len(s); i++ {
        if !contains(c, s[i]) {
            result += string(s[i])
        }
    }
    isPalindrome = isPalindrome(result)
    return []interface{}{result, isPalindrome}
}


func TestReverse_Delete(t *testing.T) {
  candidate := reverse_delete
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("abcde", "ae"), expected: []interface{}{"bcd", false} },
     { actual: candidate("abcdef", "b"), expected: []interface{}{"acdef", false} },
     { actual: candidate("abcdedcba", "ab"), expected: []interface{}{"cdedc", true} },
     { actual: candidate("dwik", "w"), expected: []interface{}{"dik", false} },
     { actual: candidate("a", "a"), expected: []interface{}{"", true} },
     { actual: candidate("abcdedcba", ""), expected: []interface{}{"abcdedcba", true} },
     { actual: candidate("abcdedcba", "v"), expected: []interface{}{"abcdedcba", true} },
     { actual: candidate("vabba", "v"), expected: []interface{}{"abba", true} },
     { actual: candidate("mamma", "mia"), expected: []interface{}{"", true} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
