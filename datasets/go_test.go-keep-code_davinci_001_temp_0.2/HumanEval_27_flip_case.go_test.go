package flip_case_test

import (
    "testing"
    "fmt"
)

// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
func flip_case(myString string) string {
    var result string
    for _, c := range myString {
        if c >= 'a' && c <= 'z' {
            result += string(c - 32)
        } else if c >= 'A' && c <= 'Z' {
            result += string(c + 32)
        } else {
            result += string(c)
        }
    }
    return result
}


func TestFlip_Case(t *testing.T) {
  candidate := flip_case
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: "" },
     { actual: candidate("Hello!"), expected: "hELLO!" },
     { actual: candidate("These violent delights have violent ends"), expected: "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
