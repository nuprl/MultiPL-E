package filter_by_prefix_test

import (
    "testing"
    "fmt"
)

// Filter an input list of strings only for ones that start with a given prefix.
// >>> filter_by_prefix([], 'a')
// []
// >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
// ['abc', 'array']
func filter_by_prefix(strings []string, prefix string) []string {
    var result []string
    for _, s := range strings {
        if len(s) >= len(prefix) && s[:len(prefix)] == prefix {
            result = append(result, s)
        }
    }
    return result
}


func TestFilter_By_Prefix(t *testing.T) {
  candidate := filter_by_prefix
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}, "john"), expected: []int{} },
     { actual: candidate([]string{"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"}, "xxx"), expected: []string{"xxx", "xxxAAA", "xxx"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
