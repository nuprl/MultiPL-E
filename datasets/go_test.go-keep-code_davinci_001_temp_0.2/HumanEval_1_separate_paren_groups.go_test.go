package separate_paren_groups_test

import (
    "testing"
    "fmt"
)

// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separate_paren_groups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
func separate_paren_groups(paren_string string) []string {
    var result []string
    var current_string string
    var open_braces int
    for _, c := range paren_string {
        if c == '(' {
            open_braces++
            current_string += string(c)
        } else if c == ')' {
            open_braces--
            current_string += string(c)
            if open_braces == 0 {
                result = append(result, current_string)
                current_string = ""
            }
        } else {
            current_string += string(c)
        }
    }
    return result
}


func TestSeparate_Paren_Groups(t *testing.T) {
  candidate := separate_paren_groups
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("(()()) ((())) () ((())()())"), expected: []string{"(()())", "((()))", "()", "((())()())"} },
     { actual: candidate("() (()) ((())) (((())))"), expected: []string{"()", "(())", "((()))", "(((())))"} },
     { actual: candidate("(()(())((())))"), expected: []string{"(()(())((())))"} },
     { actual: candidate("( ) (( )) (( )( ))"), expected: []string{"()", "(())", "(()())"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
