package vowels_count_test

import (
    "testing"
    "fmt"
)

// Write a function vowels_count which takes a string representing
// a word as input and returns the number of vowels in the string.
// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
// vowel, but only when it is at the end of the given word.
// Example:
// >>> vowels_count("abcde")
// 2
// >>> vowels_count("ACEDY")
// 3
func vowels_count(s string) int {
    var count int
    for _, c := range s {
        if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' {
            count++
        }
    }
    return count
}


func TestVowels_Count(t *testing.T) {
  candidate := vowels_count
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("abcde"), expected: 2 },
     { actual: candidate("Alone"), expected: 3 },
     { actual: candidate("key"), expected: 2 },
     { actual: candidate("bye"), expected: 1 },
     { actual: candidate("keY"), expected: 2 },
     { actual: candidate("bYe"), expected: 1 },
     { actual: candidate("ACEDY"), expected: 3 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
