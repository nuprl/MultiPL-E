package filter_integers_test

import (
    "testing"
    "fmt"
)

// Filter given list of any python values only for integers
// >>> filter_integers(['a', 3.14, 5])
// [5]
// >>> filter_integers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
func filter_integers(values []any) []int {
    var result []int
    for _, value := range values {
        if value, ok := value.(int); ok {
            result = append(result, value)
        }
    }
    return result
}


func TestFilter_Integers(t *testing.T) {
  candidate := filter_integers
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{4, map[string]int{}, []string{}, 23.2, 9, "adasd"}), expected: []int{4, 9} },
     { actual: candidate([]int{3, "c", 3, 3, "a", "b"}), expected: []int{3, 3, 3} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
