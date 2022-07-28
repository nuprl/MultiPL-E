package rescale_to_unit_test

import (
    "testing"
    "fmt"
)

// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 0.25, 0.5, 0.75, 1.0]
func rescale_to_unit(numbers []float64) []float64 {
    var min, max float64
    min = numbers[0]
    max = numbers[0]
    for _, number := range numbers {
        if number < min {
            min = number
        }
        if number > max {
            max = number
        }
    }
    var result []float64
    for _, number := range numbers {
        result = append(result, (number - min) / (max - min))
    }
    return result
}


func TestRescale_To_Unit(t *testing.T) {
  candidate := rescale_to_unit
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]float64{2.0, 49.9}), expected: []float64{0.0, 1.0} },
     { actual: candidate([]float64{100.0, 49.9}), expected: []float64{1.0, 0.0} },
     { actual: candidate([]float64{1.0, 2.0, 3.0, 4.0, 5.0}), expected: []float64{0.0, 0.25, 0.5, 0.75, 1.0} },
     { actual: candidate([]float64{2.0, 1.0, 5.0, 3.0, 4.0}), expected: []float64{0.25, 0.0, 1.0, 0.5, 0.75} },
     { actual: candidate([]float64{12.0, 11.0, 15.0, 13.0, 14.0}), expected: []float64{0.25, 0.0, 1.0, 0.5, 0.75} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
