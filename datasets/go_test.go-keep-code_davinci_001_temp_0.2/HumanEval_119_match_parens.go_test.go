package match_parens_test

import (
    "testing"
    "fmt"
)

// You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
// Examples:
// match_parens(['()(', ')']) == 'Yes'
// match_parens([')', ')']) == 'No'
func match_parens(lst []string) string {
    if len(lst) != 2 {
        return "No"
    }
    if lst[0] == "(" && lst[1] == ")" {
        return "Yes"
    }
    if lst[0] == ")" && lst[1] == "(" {
        return "Yes"
    }
    return "No"
}


func TestMatch_Parens(t *testing.T) {
  candidate := match_parens
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]string{"()(", ")"}), expected: "Yes" },
     { actual: candidate([]string{")", ")"}), expected: "No" },
     { actual: candidate([]string{"(()(())", "())())"}), expected: "No" },
     { actual: candidate([]string{")())", "(()()("}), expected: "Yes" },
     { actual: candidate([]string{"(())))", "(()())(("}), expected: "Yes" },
     { actual: candidate([]string{"()", "())"}), expected: "No" },
     { actual: candidate([]string{"(()(", "()))()"}), expected: "Yes" },
     { actual: candidate([]string{"((((", "((())"}), expected: "No" },
     { actual: candidate([]string{")(()", "(()("}), expected: "No" },
     { actual: candidate([]string{")(", ")("}), expected: "No" },
     { actual: candidate([]string{"(", ")"}), expected: "Yes" },
     { actual: candidate([]string{")", "("}), expected: "Yes" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
