package select_words_test

import (
    "testing"
    "fmt"
)

// Given a string s and a natural number n, you have been tasked to implement 
// a function that returns a list of all words from string s that contain exactly 
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// select_words("Mary had a little lamb", 4) ==> ["little"]
// select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// select_words("simple white space", 2) ==> []
// select_words("Hello world", 4) ==> ["world"]
// select_words("Uncle sam", 3) ==> ["Uncle"]
func select_words(s string, n int) []string {
    var words []string
    var word string
    var count int
    for _, c := range s {
        if c == ' ' {
            if count == n {
                words = append(words, word)
            }
            word = ""
            count = 0
        } else if c >= 'a' && c <= 'z' {
            word += string(c)
            count++
        }
    }
    if count == n {
        words = append(words, word)
    }
    return words
}


func TestSelect_Words(t *testing.T) {
  candidate := select_words
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Mary had a little lamb", 4), expected: []string{"little"} },
     { actual: candidate("Mary had a little lamb", 3), expected: []string{"Mary", "lamb"} },
     { actual: candidate("simple white space", 2), expected: []string{} },
     { actual: candidate("Hello world", 4), expected: []string{"world"} },
     { actual: candidate("Uncle sam", 3), expected: []string{"Uncle"} },
     { actual: candidate("", 4), expected: []string{} },
     { actual: candidate("a b c d e f", 1), expected: []string{"b", "c", "d", "f"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
