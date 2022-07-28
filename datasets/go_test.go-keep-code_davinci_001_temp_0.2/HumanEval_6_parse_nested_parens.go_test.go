package parse_nested_parens_test

import (
    "testing"
    "fmt"
)

// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// >>> parse_nested_parens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
func parse_nested_parens(paren_string string) []int {
    var max_nesting_depth []int
    var current_nesting_depth int
    var max_nesting_depth_so_far int
    for _, c := range paren_string {
        if c == '(' {
            current_nesting_depth += 1
            if current_nesting_depth > max_nesting_depth_so_far {
                max_nesting_depth_so_far = current_nesting_depth
            }
        } else if c == ')' {
            current_nesting_depth -= 1
        }
    }
    for i := 0; i < max_nesting_depth_so_far; i++ {
        max_nesting_depth = append(max_nesting_depth, i)
    }
    return max_nesting_depth
}


func TestParse_Nested_Parens(t *testing.T) {
  candidate := parse_nested_parens
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("(()()) ((())) () ((())()())"), expected: []int{2, 3, 1, 3} },
     { actual: candidate("() (()) ((())) (((())))"), expected: []int{1, 2, 3, 4} },
     { actual: candidate("(()(())((())))"), expected: []int{4} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
