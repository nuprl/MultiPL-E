package make_a_pile_test

import (
    "testing"
    "fmt"
)

// Given a positive integer n, you have to make a pile of n levels of stones.
// The first level has n stones.
// The number of stones in the next level is:
// - the next odd number if n is odd.
// - the next even number if n is even.
// Return the number of stones in each level in a list, where element at index
// i represents the number of stones in the level (i+1).
// Examples:
// >>> make_a_pile(3)
// [3, 5, 7]
func make_a_pile(n int) []int {
    var result []int
    for i := 0; i < n; i++ {
        if n % 2 == 0 {
            result = append(result, n + 2)
        } else {
            result = append(result, n + 1)
        }
        n += 2
    }
    return result
}


func TestMake_A_Pile(t *testing.T) {
  candidate := make_a_pile
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3), expected: []int{3, 5, 7} },
     { actual: candidate(4), expected: []int{4, 6, 8, 10} },
     { actual: candidate(5), expected: []int{5, 7, 9, 11, 13} },
     { actual: candidate(6), expected: []int{6, 8, 10, 12, 14, 16} },
     { actual: candidate(8), expected: []int{8, 10, 12, 14, 16, 18, 20, 22} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
