package derivative_test

import (
    "testing"
    "fmt"
)

// xs represent coefficients of a polynomial.
// xs[0] + xs[1] * x + xs[2] * x^2 + ....
// Return derivative of this polynomial in the same form.
// >>> derivative([3, 1, 2, 4, 5])
// [1, 4, 12, 20]
// >>> derivative([1, 2, 3])
// [2, 6]
func derivative(xs []int) []int {
    if len(xs) == 0 {
        return []int{}
    }
    if len(xs) == 1 {
        return []int{0}
    }
    return []int{xs[1], xs[1] * len(xs) - 1}
}


func TestDerivative(t *testing.T) {
  candidate := derivative
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{3, 1, 2, 4, 5}), expected: []int{1, 4, 12, 20} },
     { actual: candidate([]int{1, 2, 3}), expected: []int{2, 6} },
     { actual: candidate([]int{3, 2, 1}), expected: []int{2, 2} },
     { actual: candidate([]int{3, 2, 1, 0, 4}), expected: []int{2, 2, 0, 16} },
     { actual: candidate([]int{1}), expected: []int{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
