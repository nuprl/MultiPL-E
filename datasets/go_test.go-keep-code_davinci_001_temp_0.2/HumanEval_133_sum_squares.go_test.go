package sum_squares_test

import (
    "testing"
    "fmt"
)

// You are given a list of numbers.
// You need to return the sum of squared numbers in the given list,
// round each element in the list to the upper int(Ceiling) first.
// Examples:
// For lst = [1,2,3] the output should be 14
// For lst = [1,4,9] the output should be 98
// For lst = [1,3,5,7] the output should be 84
// For lst = [1.4,4.2,0] the output should be 29
// For lst = [-2.4,1,1] the output should be 6
func sum_squares(lst []float64) int {
    var sum int
    for _, v := range lst {
        sum += int(v * v)
    }
    return sum
}


func TestSum_Squares(t *testing.T) {
  candidate := sum_squares
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]float64{1.0, 2.0, 3.0}), expected: 14 },
     { actual: candidate([]float64{1.0, 2.0, 3.0}), expected: 14 },
     { actual: candidate([]float64{1.0, 3.0, 5.0, 7.0}), expected: 84 },
     { actual: candidate([]float64{1.4, 4.2, 0.0}), expected: 29 },
     { actual: candidate([]float64{-2.4, 1.0, 1.0}), expected: 6 },
     { actual: candidate([]float64{100.0, 1.0, 15.0, 2.0}), expected: 10230 },
     { actual: candidate([]float64{10000.0, 10000.0}), expected: 200000000 },
     { actual: candidate([]float64{-1.4, 4.6, 6.3}), expected: 75 },
     { actual: candidate([]float64{-1.4, 17.9, 18.9, 19.9}), expected: 1086 },
     { actual: candidate([]float64{0.0}), expected: 0 },
     { actual: candidate([]float64{-1.0}), expected: 1 },
     { actual: candidate([]float64{-1.0, 1.0, 0.0}), expected: 2 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
