package is_bored_test

import (
    "testing"
    "fmt"
)

// You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
// For example:
// >>> is_bored("Hello world")
// 0
// >>> is_bored("The sky is blue. The sun is shining. I love this weather")
// 1
func is_bored(S string) int {
    // your code here
    return 0
}


func TestIs_Bored(t *testing.T) {
  candidate := is_bored
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Hello world"), expected: 0 },
     { actual: candidate("Is the sky blue?"), expected: 0 },
     { actual: candidate("I love It !"), expected: 1 },
     { actual: candidate("bIt"), expected: 0 },
     { actual: candidate("I feel good today. I will be productive. will kill It"), expected: 2 },
     { actual: candidate("You and I are going for a walk"), expected: 0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
