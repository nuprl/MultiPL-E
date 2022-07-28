package solve_test

import (
    "testing"
    "fmt"
)

// You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa, 
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// solve("1234") = "4321"
// solve("ab") = "AB"
// solve("#a@C") = "#A@c"
func solve(s string) string {
    // Write your code here
    var result string
    for _, v := range s {
        if v >= 'a' && v <= 'z' {
            if v >= 'A' && v <= 'Z' {
                result += string(v + 32)
            } else {
                result += string(v - 32)
            }
        } else if v >= 'A' && v <= 'Z' {
            if v >= 'a' && v <= 'z' {
                result += string(v - 32)
            } else {
                result += string(v + 32)
            }
        } else {
            result += string(v)
        }
    }
    return result
}


func TestSolve(t *testing.T) {
  candidate := solve
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("AsDf"), expected: "aSdF" },
     { actual: candidate("1234"), expected: "4321" },
     { actual: candidate("ab"), expected: "AB" },
     { actual: candidate("#a@C"), expected: "#A@c" },
     { actual: candidate("#AsdfW^45"), expected: "#aSDFw^45" },
     { actual: candidate("#6@2"), expected: "2@6#" },
     { actual: candidate("#$a^D"), expected: "#$A^d" },
     { actual: candidate("#ccc"), expected: "#CCC" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
