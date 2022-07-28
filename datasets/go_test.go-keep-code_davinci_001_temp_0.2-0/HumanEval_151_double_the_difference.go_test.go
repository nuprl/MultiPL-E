package double_the_difference_test

import (
    "testing"
    "fmt"
)

// Given a list of numbers, return the sum of squares of the numbers
// in the list that are odd. Ignore numbers that are negative or not integers.
// double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
// double_the_difference([-1, -2, 0]) == 0
// double_the_difference([9, -2]) == 81
// double_the_difference([0]) == 0  
// If the input list is empty, return 0.
func double_the_difference(lst []float64) int {
    var sum int
    for _, v := range lst {
        if v > 0 && v % 2 != 0 {
            sum += int(v * v)
        }
    }
    return sum
}


func TestDouble_The_Difference(t *testing.T) {
  candidate := double_the_difference
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: 0 },
     { actual: candidate([]float64{5.0, 4.0}), expected: 25 },
     { actual: candidate([]float64{0.1, 0.2, 0.3}), expected: 0 },
     { actual: candidate([]float64{-10.0, -20.0, -30.0}), expected: 0 },
     { actual: candidate([]float64{-1.0, -2.0, 8.0}), expected: 0 },
     { actual: candidate([]float64{0.2, 3.0, 5.0}), expected: 34 },
     { actual: candidate([]float64{-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0}), expected: 165 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
