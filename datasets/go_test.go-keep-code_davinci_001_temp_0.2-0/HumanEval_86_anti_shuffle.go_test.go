package anti_shuffle_test

import (
    "testing"
    "fmt"
)

// Write a function that takes a string and returns an ordered version of it.
// Ordered version of string, is a string where all words (separated by space)
// are replaced by a new word where all the characters arranged in
// ascending order based on ascii value.
// Note: You should keep the order of words and blank spaces in the sentence.
// For example:
// anti_shuffle('Hi') returns 'Hi'
// anti_shuffle('hello') returns 'ehllo'
// anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
func anti_shuffle(s string) string {
    return ""
}


func TestAnti_Shuffle(t *testing.T) {
  candidate := anti_shuffle
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Hi"), expected: "Hi" },
     { actual: candidate("hello"), expected: "ehllo" },
     { actual: candidate("number"), expected: "bemnru" },
     { actual: candidate("abcd"), expected: "abcd" },
     { actual: candidate("Hello World!!!"), expected: "Hello !!!Wdlor" },
     { actual: candidate(""), expected: "" },
     { actual: candidate("Hi. My name is Mister Robot. How are you?"), expected: ".Hi My aemn is Meirst .Rboot How aer ?ouy" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
