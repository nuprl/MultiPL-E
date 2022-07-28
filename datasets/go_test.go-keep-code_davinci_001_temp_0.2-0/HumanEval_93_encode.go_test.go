package encode_test

import (
    "testing"
    "fmt"
)

// Write a function that takes a message, and encodes in such a 
// way that it swaps case of all letters, replaces all vowels in 
// the message with the letter that appears 2 places ahead of that 
// vowel in the english alphabet. 
// Assume only letters. 
// Examples:
// >>> encode('test')
// 'TGST'
// >>> encode('This is a message')
// 'tHKS KS C MGSSCGG'
func encode(message string) string {
    return message
}


func TestEncode(t *testing.T) {
  candidate := encode
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("TEST"), expected: "tgst" },
     { actual: candidate("Mudasir"), expected: "mWDCSKR" },
     { actual: candidate("YES"), expected: "ygs" },
     { actual: candidate("This is a message"), expected: "tHKS KS C MGSSCGG" },
     { actual: candidate("I DoNt KnOw WhAt tO WrItE"), expected: "k dQnT kNqW wHcT Tq wRkTg" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
