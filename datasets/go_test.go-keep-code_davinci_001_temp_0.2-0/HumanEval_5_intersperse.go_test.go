package intersperse_test

import (
    "testing"
    "fmt"
)

// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> intersperse([], 4)
// []
// >>> intersperse([1, 2, 3], 4)
// [1, 4, 2, 4, 3]
func intersperse(numbers []int, delimeter int) []int {
    if len(numbers) == 0 {
        return numbers
    }
    result := make([]int, 0, len(numbers) * 2 - 1)
    result = append(result, numbers[0])
    for i := 1; i < len(numbers); i++ {
        result = append(result, delimeter)
        result = append(result, numbers[i])
    }
    return result
}


func TestIntersperse(t *testing.T) {
  candidate := intersperse
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}, 7), expected: []int{} },
     { actual: candidate([]int{5, 6, 3, 2}, 8), expected: []int{5, 8, 6, 8, 3, 8, 2} },
     { actual: candidate([]int{2, 2, 2}, 2), expected: []int{2, 2, 2, 2, 2} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
