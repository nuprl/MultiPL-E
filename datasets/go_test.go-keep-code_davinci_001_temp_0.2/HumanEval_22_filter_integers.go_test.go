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
func filter_integers(values []interface{}) []int {
    var result []int
    for _, v := range values {
        switch v.(type) {
        case int:
            result = append(result, v.(int))
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
     { actual: candidate([]interface{}{}), expected: []int{} },
     { actual: candidate([]interface{}{4, map[interface{}]interface{}{}, []interface{}{}, 23.2, 9, "adasd"}), expected: []int{4, 9} },
     { actual: candidate([]interface{}{3, "c", 3, 3, "a", "b"}), expected: []int{3, 3, 3} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
