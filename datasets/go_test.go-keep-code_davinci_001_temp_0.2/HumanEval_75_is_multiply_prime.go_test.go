package is_multiply_prime_test

import (
    "testing"
    "fmt"
)

// Write a function that returns true if the given number is the multiplication of 3 prime numbers
// and false otherwise.
// Knowing that (a) is less then 100. 
// Example:
// is_multiply_prime(30) == True
// 30 = 2 * 3 * 5
func is_multiply_prime(a int) bool {
    // your code here
    return false
}


func TestIs_Multiply_Prime(t *testing.T) {
  candidate := is_multiply_prime
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5), expected: false },
     { actual: candidate(30), expected: true },
     { actual: candidate(8), expected: true },
     { actual: candidate(10), expected: false },
     { actual: candidate(125), expected: true },
     { actual: candidate(105), expected: true },
     { actual: candidate(126), expected: false },
     { actual: candidate(729), expected: false },
     { actual: candidate(891), expected: false },
     { actual: candidate(1001), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
