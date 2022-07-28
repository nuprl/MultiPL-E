package tri_test

import (
    "testing"
    "fmt"
)

// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
// the last couple centuries. However, what people don't know is Tribonacci sequence.
// Tribonacci sequence is defined by the recurrence:
// tri(1) = 3
// tri(n) = 1 + n / 2, if n is even.
// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
// For example:
// tri(2) = 1 + (2 / 2) = 2
// tri(4) = 3
// tri(3) = tri(2) + tri(1) + tri(4)
// = 2 + 3 + 3 = 8 
// You are given a non-negative integer number n, you have to a return a list of the 
// first n + 1 numbers of the Tribonacci sequence.
// Examples:
// tri(3) = [1, 3, 2, 8]
func tri(n int) []int {
    if n == 0 {
        return []int{}
    }
    if n == 1 {
        return []int{1}
    }
    if n == 2 {
        return []int{1, 3}
    }
    if n == 3 {
        return []int{1, 3, 2}
    }
    if n == 4 {
        return []int{1, 3, 2, 8}
    }
    if n == 5 {
        return []int{1, 3, 2, 8, 21}
    }
    if n == 6 {
        return []int{1, 3, 2, 8, 21, 55}
    }
    if n == 7 {
        return []int{1, 3, 2, 8, 21, 55, 144}
    }
    if n == 8 {
        return []int{1, 3, 2, 8, 21, 55, 144, 377}
    }
    if n == 9 {
        return []int{1, 3, 2, 8, 21, 55, 144, 377, 987}
    }
    if n == 10 {
        return []int{1, 3, 2, 8, 21, 55, 144, 377, 987, 2584}
    }
    if n == 11 {
        return []int{1, 3, 2, 8, 21, 55, 144, 377, 987, 2584, 6765}
    }
    if n == 12 {
        return []int{1, 3, 2, 8, 21, 55, 144, 377, 987, 2584, 6765, 17711}
    }
    if n == 13 {
        return []int{1, 3, 2, 8, 21, 55, 144, 377, 987, 2584, 6765, 17711, 46368}
    }
    if n == 14 {
        return []int{1, 3, 2, 8, 21, 55, 144, 377, 987, 2584, 6765, 17711, 46368, 121393}
    }
    if n == 15 {
        return []int{1, 3, 2, 8, 21, 55, 144,

func TestTri(t *testing.T) {
  candidate := tri
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3), expected: []int{1, 3, 2, 8} },
     { actual: candidate(4), expected: []int{1, 3, 2, 8, 3} },
     { actual: candidate(5), expected: []int{1, 3, 2, 8, 3, 15} },
     { actual: candidate(6), expected: []int{1, 3, 2, 8, 3, 15, 4} },
     { actual: candidate(7), expected: []int{1, 3, 2, 8, 3, 15, 4, 24} },
     { actual: candidate(8), expected: []int{1, 3, 2, 8, 3, 15, 4, 24, 5} },
     { actual: candidate(9), expected: []int{1, 3, 2, 8, 3, 15, 4, 24, 5, 35} },
     { actual: candidate(20), expected: []int{1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11} },
     { actual: candidate(0), expected: []int{1} },
     { actual: candidate(1), expected: []int{1, 3} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
