package find_max_test

import (
    "testing"
    "fmt"
)

// Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
// find_max(["name", "of", "string"]) == "string"
// find_max(["name", "enam", "game"]) == "enam"
// find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
func find_max(words []string) string {
    var max_word string
    var max_len int
    for _, word := range words {
        if len(word) > max_len {
            max_len = len(word)
            max_word = word
        }
    }
    return max_word
}


func TestFind_Max(t *testing.T) {
  candidate := find_max
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]string{"name", "of", "string"}), expected: "string" },
     { actual: candidate([]string{"name", "enam", "game"}), expected: "enam" },
     { actual: candidate([]string{"aaaaaaa", "bb", "cc"}), expected: "aaaaaaa" },
     { actual: candidate([]string{"abc", "cba"}), expected: "abc" },
     { actual: candidate([]string{"play", "this", "game", "of", "footbott"}), expected: "footbott" },
     { actual: candidate([]string{"we", "are", "gonna", "rock"}), expected: "gonna" },
     { actual: candidate([]string{"we", "are", "a", "mad", "nation"}), expected: "nation" },
     { actual: candidate([]string{"this", "is", "a", "prrk"}), expected: "this" },
     { actual: candidate([]string{"b"}), expected: "b" },
     { actual: candidate([]string{"play", "play", "play"}), expected: "play" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
