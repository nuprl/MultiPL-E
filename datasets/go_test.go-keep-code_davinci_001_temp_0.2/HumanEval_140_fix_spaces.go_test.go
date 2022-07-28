package fix_spaces_test

import (
    "testing"
    "fmt"
)

// Given a string text, replace all spaces in it with underscores, 
// and if a string has more than 2 consecutive spaces, 
// then replace all consecutive spaces with - 
// fix_spaces("Example") == "Example"
// fix_spaces("Example 1") == "Example_1"
// fix_spaces(" Example 2") == "_Example_2"
// fix_spaces(" Example   3") == "_Example-3"
func fix_spaces(text string) string {
    return text
}


func TestFix_Spaces(t *testing.T) {
  candidate := fix_spaces
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Example"), expected: "Example" },
     { actual: candidate("Mudasir Hanif "), expected: "Mudasir_Hanif_" },
     { actual: candidate("Yellow Yellow  Dirty  Fellow"), expected: "Yellow_Yellow__Dirty__Fellow" },
     { actual: candidate("Exa   mple"), expected: "Exa-mple" },
     { actual: candidate("   Exa 1 2 2 mple"), expected: "-Exa_1_2_2_mple" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
