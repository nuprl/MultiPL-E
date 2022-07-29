package below_zero_test

import (
    "testing"
    "fmt"
)

// You're given a list of deposit and withdrawal operations on a bank account that starts with
// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
// at that point function should return True. Otherwise it should return False.
// >>> below_zero([1, 2, 3])
// False
// >>> below_zero([1, 2, -4, 5])
// True
func below_zero(operations []int) bool {
    balance := 0
    for _, op := range operations {
        if op < 0 {
            balance -= op
        }
        if balance < 0 {
            return true
        }
    }
    return false
}


func TestBelow_Zero(t *testing.T) {
  candidate := below_zero
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}), expected: false },
     { actual: candidate([]int{1, 2, -3, 1, 2, -3}), expected: false },
     { actual: candidate([]int{1, 2, -4, 5, 6}), expected: true },
     { actual: candidate([]int{1, -1, 2, -2, 5, -5, 4, -4}), expected: false },
     { actual: candidate([]int{1, -1, 2, -2, 5, -5, 4, -5}), expected: true },
     { actual: candidate([]int{1, -2, 2, -2, 5, -5, 4, -4}), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
