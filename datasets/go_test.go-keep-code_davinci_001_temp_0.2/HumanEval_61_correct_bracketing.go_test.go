package correct_bracketing_test

import (
    "testing"
    "fmt"
)

// brackets is a string of "(" and ")".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("(")
// False
// >>> correct_bracketing("()")
// True
// >>> correct_bracketing("(()())")
// True
// >>> correct_bracketing(")(()")
// False
func correct_bracketing(brackets string) bool {
    stack := []rune{}
    for _, bracket := range brackets {
        if bracket == '(' {
            stack = append(stack, bracket)
        } else {
            if len(stack) == 0 {
                return false
            }
            stack = stack[:len(stack)-1]
        }
    }
    return len(stack) == 0
}


func TestCorrect_Bracketing(t *testing.T) {
  candidate := correct_bracketing
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("()"), expected: true },
     { actual: candidate("(()())"), expected: true },
     { actual: candidate("()()(()())()"), expected: true },
     { actual: candidate("()()((()()())())(()()(()))"), expected: true },
     { actual: candidate("((()())))"), expected: false },
     { actual: candidate(")(()"), expected: false },
     { actual: candidate("("), expected: false },
     { actual: candidate("(((("), expected: false },
     { actual: candidate(")"), expected: false },
     { actual: candidate("(()"), expected: false },
     { actual: candidate("()()(()())())(()"), expected: false },
     { actual: candidate("()()(()())()))()"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
