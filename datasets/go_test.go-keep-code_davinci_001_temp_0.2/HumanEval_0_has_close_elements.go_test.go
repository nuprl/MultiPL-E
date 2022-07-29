package has_close_elements_test

import (
    "testing"
    "fmt"
)

// Check if in given list of numbers, are any two numbers closer to each other than
// given threshold.
// >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
// False
// >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
// True
func has_close_elements(numbers []float64, threshold float64) bool {
    // TODO: implement this function
    return false
}


func TestHas_Close_Elements(t *testing.T) {
  candidate := has_close_elements
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]float64{1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.3), expected: true },
     { actual: candidate([]float64{1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.05), expected: false },
     { actual: candidate([]float64{1.0, 2.0, 5.9, 4.0, 5.0}, 0.95), expected: true },
     { actual: candidate([]float64{1.0, 2.0, 5.9, 4.0, 5.0}, 0.8), expected: false },
     { actual: candidate([]float64{1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.1), expected: true },
     { actual: candidate([]float64{1.1, 2.2, 3.1, 4.1, 5.1}, 1.0), expected: true },
     { actual: candidate([]float64{1.1, 2.2, 3.1, 4.1, 5.1}, 0.5), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
