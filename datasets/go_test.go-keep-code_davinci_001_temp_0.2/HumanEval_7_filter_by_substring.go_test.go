package filter_by_substring_test

import (
    "testing"
    "fmt"
)

// Filter an input list of strings only for ones that contain given substring
// >>> filter_by_substring([], 'a')
// []
// >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
// ['abc', 'bacd', 'array']
func filter_by_substring(strings []string, substring string) []string {
    var result []string
    for _, s := range strings {
        if len(s) >= len(substring) && s[:len(substring)] == substring {
            result = append(result, s)
        }
    }
    return result
}


func TestFilter_By_Substring(t *testing.T) {
  candidate := filter_by_substring
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}, "john"), expected: []int{} },
     { actual: candidate([]string{"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"}, "xxx"), expected: []string{"xxx", "xxxAAA", "xxx"} },
     { actual: candidate([]string{"xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"}, "xx"), expected: []string{"xxx", "aaaxxy", "xxxAAA", "xxx"} },
     { actual: candidate([]string{"grunt", "trumpet", "prune", "gruesome"}, "run"), expected: []string{"grunt", "prune"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
