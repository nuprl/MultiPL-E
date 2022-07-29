package factorize_test

import (
    "testing"
    "fmt"
)

// Return list of prime factors of given integer in the order from smallest to largest.
// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
// Input number should be equal to the product of all factors
// >>> factorize(8)
// [2, 2, 2]
// >>> factorize(25)
// [5, 5]
// >>> factorize(70)
// [2, 5, 7]
func factorize(n int) []int {
    var factors []int
    for n % 2 == 0 {
        factors = append(factors, 2)
        n /= 2
    }
    for i := 3; i*i <= n; i += 2 {
        for n % i == 0 {
            factors = append(factors, i)
            n /= i
        }
    }
    if n > 2 {
        factors = append(factors, n)
    }
    return factors
}


func TestFactorize(t *testing.T) {
  candidate := factorize
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(2), expected: []int{2} },
     { actual: candidate(4), expected: []int{2, 2} },
     { actual: candidate(8), expected: []int{2, 2, 2} },
     { actual: candidate(57), expected: []int{3, 19} },
     { actual: candidate(3249), expected: []int{3, 3, 19, 19} },
     { actual: candidate(185193), expected: []int{3, 3, 3, 19, 19, 19} },
     { actual: candidate(20577), expected: []int{3, 19, 19, 19} },
     { actual: candidate(18), expected: []int{2, 3, 3} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
