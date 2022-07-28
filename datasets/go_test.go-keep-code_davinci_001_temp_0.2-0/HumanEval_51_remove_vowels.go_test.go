package remove_vowels_test

import (
    "testing"
    "fmt"
)

// remove_vowels is a function that takes string and returns string without vowels.
// >>> remove_vowels('')
// ''
// >>> remove_vowels('abcdef')
// 'bcdf'
// >>> remove_vowels('aaaaa')
// ''
// >>> remove_vowels('aaBAA')
// 'B'
// >>> remove_vowels('zbcd')
// 'zbcd'
func remove_vowels(text string) string {
    vowels := []string{"a", "e", "i", "o", "u"}
    result := ""
    for _, char := range text {
        if !contains(vowels, string(char)) {
            result += string(char)
        }
    }
    return result
}


func TestRemove_Vowels(t *testing.T) {
  candidate := remove_vowels
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: "" },
     { actual: candidate("abcdef
ghijklm"), expected: "bcdf
ghjklm" },
     { actual: candidate("fedcba"), expected: "fdcb" },
     { actual: candidate("eeeee"), expected: "" },
     { actual: candidate("acBAA"), expected: "cB" },
     { actual: candidate("EcBOO"), expected: "cB" },
     { actual: candidate("ybcd"), expected: "ybcd" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
