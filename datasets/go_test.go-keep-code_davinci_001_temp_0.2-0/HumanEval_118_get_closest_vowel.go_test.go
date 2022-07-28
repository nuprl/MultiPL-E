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
    var vowels = []string{"a", "e", "i", "o", "u"}
    var consonants = []string{"b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"}
    var result string
    var distance int
    for i := 0; i < len(word); i++ {
        if (word[i] == 'a' || word[i] == 'e' || word[i] == 'i' || word[i] == 'o' || word[i] == 'u') {
            for j := i + 1; j < len(word); j++ {
                if (word[j] == 'a' || word[j] == 'e' || word[j] == 'i' || word[j] == 'o' || word[j] == 'u') {
                    for k := 0; k < len(consonants); k++ {
                        if (word[j] == consonants[k]) {
                            if (distance == 0) {
                                result = word[i]
                                distance = j - i
                            } else {
                                if (j - i < distance) {
                                    result = word[i]
                                    distance = j - i
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return result
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
