package add_test

import (
    "testing"
    "fmt"
)

// Given a non-empty list of integers lst. add the even elements that are at odd indices..
// Examples:
// add([4, 2, 6, 7]) ==> 2
func add(lst []int) int {
    sum := 0
    for i := 0; i < len(lst); i += 2 {
        sum += lst[i]
    }
    return sum
}


func TestAdd(t *testing.T) {
  candidate := add
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{4, 88}), expected: 88 },
     { actual: candidate([]int{4, 5, 6, 7, 2, 122}), expected: 122 },
     { actual: candidate([]int{4, 0, 6, 7}), expected: 0 },
     { actual: candidate([]int{4, 4, 6, 8}), expected: 12 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
