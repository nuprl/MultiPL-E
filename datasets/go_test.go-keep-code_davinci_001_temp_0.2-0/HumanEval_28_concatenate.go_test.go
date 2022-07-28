package concatenate_test

import (
    "testing"
    "fmt"
)

// Concatenate list of strings into a single string
// >>> concatenate([])
// ''
// >>> concatenate(['a', 'b', 'c'])
// 'abc'
func concatenate(strings []string) string {
    var result string
    for _, s := range strings {
        result += s
    }
    return result
}


func TestConcatenate(t *testing.T) {
  candidate := concatenate
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: "" },
     { actual: candidate([]string{"x", "y", "z"}), expected: "xyz" },
     { actual: candidate([]string{"x", "y", "z", "w", "k"}), expected: "xyzwk" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
