package find_closest_elements_test

import (
    "testing"
    "fmt"
)

// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
// (2.0, 2.2)
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
// (2.0, 2.0)
func find_closest_elements(numbers []float64) []interface{} {
    // Write your code here
    return nil
}


func TestFind_Closest_Elements(t *testing.T) {
  candidate := find_closest_elements
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]float64{1.0, 2.0, 3.9, 4.0, 5.0, 2.2}), expected: []interface{}{3.9, 4.0} },
     { actual: candidate([]float64{1.0, 2.0, 5.9, 4.0, 5.0}), expected: []interface{}{5.0, 5.9} },
     { actual: candidate([]float64{1.0, 2.0, 3.0, 4.0, 5.0, 2.2}), expected: []interface{}{2.0, 2.2} },
     { actual: candidate([]float64{1.0, 2.0, 3.0, 4.0, 5.0, 2.0}), expected: []interface{}{2.0, 2.0} },
     { actual: candidate([]float64{1.1, 2.2, 3.1, 4.1, 5.1}), expected: []interface{}{2.2, 3.1} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
