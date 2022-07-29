package mean_absolute_deviation_test

import (
    "testing"
    "fmt"
)

// For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
// 1.0
func mean_absolute_deviation(numbers []float64) float64 {
    // your code here
    return 0.0
}


func TestMean_Absolute_Deviation(t *testing.T) {
  candidate := mean_absolute_deviation
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]float64{1.0, 2.0}), expected: 0.5 },
     { actual: candidate([]float64{1.0, 2.0, 3.0, 4.0}), expected: 1.0 },
     { actual: candidate([]float64{1.0, 2.0, 3.0, 4.0, 5.0}), expected: 1.2 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
