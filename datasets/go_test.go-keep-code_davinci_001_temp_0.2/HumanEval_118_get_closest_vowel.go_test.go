package get_closest_vowel_test

import (
    "testing"
    "fmt"
)

// You are given a word. Your task is to find the closest vowel that stands between 
// two consonants from the right side of the word (case sensitive).
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition. 
// You may assume that the given string contains English letter only.
// Example:
// get_closest_vowel("yogurt") ==> "u"
// get_closest_vowel("FULL") ==> "U"
// get_closest_vowel("quick") ==> ""
// get_closest_vowel("ab") ==> ""
func get_closest_vowel(word string) string {
    // Write your code here
    return ""
}


func TestGet_Closest_Vowel(t *testing.T) {
  candidate := get_closest_vowel
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("yogurt"), expected: "u" },
     { actual: candidate("full"), expected: "u" },
     { actual: candidate("easy"), expected: "" },
     { actual: candidate("eAsy"), expected: "" },
     { actual: candidate("ali"), expected: "" },
     { actual: candidate("bad"), expected: "a" },
     { actual: candidate("most"), expected: "o" },
     { actual: candidate("ab"), expected: "" },
     { actual: candidate("ba"), expected: "" },
     { actual: candidate("quick"), expected: "" },
     { actual: candidate("anime"), expected: "i" },
     { actual: candidate("Asia"), expected: "" },
     { actual: candidate("Above"), expected: "o" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
