package all_prefixes_test

import (
    "testing"
    "fmt"
)

// Return list of all prefixes from shortest to longest of the input string
// >>> all_prefixes('abc')
// ['a', 'ab', 'abc']
func all_prefixes(myString string) []string {
    var result []string
    for i := 0; i < len(myString); i++ {
        result = append(result, myString[:i+1])
    }
    return result
}


func TestAll_Prefixes(t *testing.T) {
  candidate := all_prefixes
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: []string{} },
     { actual: candidate("asdfgh"), expected: []string{"a", "as", "asd", "asdf", "asdfg", "asdfgh"} },
     { actual: candidate("WWW"), expected: []string{"W", "WW", "WWW"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
