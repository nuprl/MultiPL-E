package solution_test

import (
    "testing"
    "fmt"
)

// Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
// Examples
// solution([5, 8, 7, 1]) ==> 12
// solution([3, 3, 3, 3, 3]) ==> 9
// solution([30, 13, 24, 321]) ==>0
func solution(lst []int) int {
    sum := 0
    for i := 0; i < len(lst); i++ {
        if i % 2 == 0 && lst[i] % 2 != 0 {
            sum += lst[i]
        }
    }
    return sum
}


func TestSolution(t *testing.T) {
  candidate := solution
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{5, 8, 7, 1}), expected: 12 },
     { actual: candidate([]int{3, 3, 3, 3, 3}), expected: 9 },
     { actual: candidate([]int{30, 13, 24, 321}), expected: 0 },
     { actual: candidate([]int{5, 9}), expected: 5 },
     { actual: candidate([]int{2, 4, 8}), expected: 0 },
     { actual: candidate([]int{30, 13, 23, 32}), expected: 23 },
     { actual: candidate([]int{3, 13, 2, 9}), expected: 3 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
