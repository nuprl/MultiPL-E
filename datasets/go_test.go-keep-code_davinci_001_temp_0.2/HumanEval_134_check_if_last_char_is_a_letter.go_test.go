package check_if_last_char_is_a_letter_test

import (
    "testing"
    "fmt"
)

// Create a function that returns True if the last character
// of a given string is an alphabetical character and is not
// a part of a word, and False otherwise.
// Note: "word" is a group of characters separated by space.
// Examples:
// check_if_last_char_is_a_letter("apple pie") ➞ False
// check_if_last_char_is_a_letter("apple pi e") ➞ True
// check_if_last_char_is_a_letter("apple pi e ") ➞ False
// check_if_last_char_is_a_letter("") ➞ False
func check_if_last_char_is_a_letter(txt string) bool {
    return false
}


func TestCheck_If_Last_Char_Is_A_Letter(t *testing.T) {
  candidate := check_if_last_char_is_a_letter
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("apple"), expected: false },
     { actual: candidate("apple pi e"), expected: true },
     { actual: candidate("eeeee"), expected: false },
     { actual: candidate("A"), expected: true },
     { actual: candidate("Pumpkin pie "), expected: false },
     { actual: candidate("Pumpkin pie 1"), expected: false },
     { actual: candidate(""), expected: false },
     { actual: candidate("eeeee e "), expected: false },
     { actual: candidate("apple pie"), expected: false },
     { actual: candidate("apple pi e "), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
