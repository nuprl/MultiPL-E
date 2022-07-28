package words_string_test

import (
    "testing"
    "fmt"
)

// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
func words_string(s string) []string {
    // your code here
    return nil
}


func TestWords_String(t *testing.T) {
  candidate := words_string
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Hi, my name is John"), expected: []string{"Hi", "my", "name", "is", "John"} },
     { actual: candidate("One, two, three, four, five, six"), expected: []string{"One", "two", "three", "four", "five", "six"} },
     { actual: candidate("Hi, my name"), expected: []string{"Hi", "my", "name"} },
     { actual: candidate("One,, two, three, four, five, six,"), expected: []string{"One", "two", "three", "four", "five", "six"} },
     { actual: candidate(""), expected: []string{} },
     { actual: candidate("ahmed     , gamal"), expected: []string{"ahmed", "gamal"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
