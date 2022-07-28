package sort_third_test

import (
    "testing"
    "fmt"
)

// This function takes a list l and returns a list l' such that
// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
// to the values of the corresponding indicies of l, but sorted.
// >>> sort_third([1, 2, 3])
// [1, 2, 3]
// >>> sort_third([5, 6, 3, 4, 8, 9, 2])
// [2, 6, 3, 4, 8, 9, 5]
func sort_third(l []int) []int {
    var l_prime []int
    for i, v := range l {
        if i % 3 == 0 {
            l_prime = append(l_prime, v)
        } else {
            l_prime = append(l_prime, l[i])
        }
    }
    return l_prime
}


func TestSort_Third(t *testing.T) {
  candidate := sort_third
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{5, 6, 3, 4, 8, 9, 2}), expected: []int{2, 6, 3, 4, 8, 9, 5} },
     { actual: candidate([]int{5, 8, 3, 4, 6, 9, 2}), expected: []int{2, 8, 3, 4, 6, 9, 5} },
     { actual: candidate([]int{5, 6, 9, 4, 8, 3, 2}), expected: []int{2, 6, 9, 4, 8, 3, 5} },
     { actual: candidate([]int{5, 6, 3, 4, 8, 9, 2, 1}), expected: []int{2, 6, 3, 4, 8, 9, 5, 1} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
