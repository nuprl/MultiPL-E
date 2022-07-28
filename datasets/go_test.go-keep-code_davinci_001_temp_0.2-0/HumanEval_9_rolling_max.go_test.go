package rolling_max_test

import (
    "testing"
    "fmt"
)

// From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers []int) []int {
    result := make([]int, len(numbers))
    result[0] = numbers[0]
    for i := 1; i < len(numbers); i++ {
        if numbers[i] > result[i-1] {
            result[i] = numbers[i]
        } else {
            result[i] = result[i-1]
        }
    }
    return result
}


func TestRolling_Max(t *testing.T) {
  candidate := rolling_max
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{1, 2, 3, 4}), expected: []int{1, 2, 3, 4} },
     { actual: candidate([]int{4, 3, 2, 1}), expected: []int{4, 4, 4, 4} },
     { actual: candidate([]int{3, 2, 3, 100, 3}), expected: []int{3, 3, 3, 100, 100} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
