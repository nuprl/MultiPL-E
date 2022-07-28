package words_in_sentence_test

import (
    "testing"
    "fmt"
)

// You are given a string representing a sentence,
// the sentence contains some words separated by a space,
// and you have to return a string that contains the words from the original sentence,
// whose lengths are prime numbers,
// the order of the words in the new string should be the same as the original one.
// Example 1:
// Input: sentence = "This is a test"
// Output: "is"
// Example 2:
// Input: sentence = "lets go for swimming"
// Output: "go for"
// Constraints:
// * 1 <= len(sentence) <= 100
// * sentence contains only letters
func words_in_sentence(sentence string) string {
    var result string
    var words []string
    var word string
    var is_prime bool
    var is_prime_count int
    var is_prime_count_max int
    var is_prime_count_max_index int
    var is_prime_count_max_index_count int
    var is_prime_count_max_index_count_max int
    var is_prime_count_max_index_count_max_index int
    var is_prime_count_max_index_count_max_index_count int
    var is_prime_count_max_index_count_max_index_count_max int
    var is_prime_count_max_index_count_max_index_count_max_index int
    var is_prime_count_max_index_count_max_index_count_max_index_count int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max_index int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max_index_count int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max_index_count_max int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max_index_count_max_index int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max_index_count_max_index_count int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max_index_count_max_index_count_max int
    var is_prime_count_max_index_count_max_index_count_max_index_count_max_index_count_max_index_count_max_index int
    var is_prime_count_

func TestWords_In_Sentence(t *testing.T) {
  candidate := words_in_sentence
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("This is a test"), expected: "is" },
     { actual: candidate("lets go for swimming"), expected: "go for" },
     { actual: candidate("there is no place available here"), expected: "there is no place" },
     { actual: candidate("Hi I am Hussein"), expected: "Hi am Hussein" },
     { actual: candidate("go for it"), expected: "go for it" },
     { actual: candidate("here"), expected: "" },
     { actual: candidate("here is"), expected: "is" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
