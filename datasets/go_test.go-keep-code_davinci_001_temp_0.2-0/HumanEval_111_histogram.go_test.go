package histogram_test

import (
    "testing"
    "fmt"
)

// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
// Example:
// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram('a b b a') == {'a': 2, 'b': 2}
// histogram('a b c a b') == {'a': 2, 'b': 2}
// histogram('b b b b a') == {'b': 4}
// histogram('') == {}
func histogram(test string) map[string]int {
    var result map[string]int = make(map[string]int)
    for _, v := range test {
        result[string(v)]++
    }
    return result
}


func TestHistogram(t *testing.T) {
  candidate := histogram
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("a b b a"), expected: map[string]int{"a": 2, "b": 2} },
     { actual: candidate("a b c a b"), expected: map[string]int{"a": 2, "b": 2} },
     { actual: candidate("a b c d g"), expected: map[string]int{"a": 1, "b": 1, "c": 1, "d": 1, "g": 1} },
     { actual: candidate("r t g"), expected: map[string]int{"r": 1, "t": 1, "g": 1} },
     { actual: candidate("b b b b a"), expected: map[string]int{"b": 4} },
     { actual: candidate("r t g"), expected: map[string]int{"r": 1, "t": 1, "g": 1} },
     { actual: candidate(""), expected: map[string]int{} },
     { actual: candidate("a"), expected: map[string]int{"a": 1} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
