package will_it_fly_test

import (
    "testing"
    "fmt"
)

// Write a function that returns True if the object q will fly, and False otherwise.
// The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
// Example:
// will_it_fly([1, 2], 5) ➞ False 
// # 1+2 is less than the maximum possible weight, but it's unbalanced.
// will_it_fly([3, 2, 3], 1) ➞ False
// # it's balanced, but 3+2+3 is more than the maximum possible weight.
// will_it_fly([3, 2, 3], 9) ➞ True
// # 3+2+3 is less than the maximum possible weight, and it's balanced.
// will_it_fly([3], 5) ➞ True
// # 3 is less than the maximum possible weight, and it's balanced.
func will_it_fly(q []int, w int) bool {
    if len(q) == 0 {
        return true
    }
    sum := 0
    for _, v := range q {
        sum += v
    }
    return sum <= w && is_palindrome(q)
}


func TestWill_It_Fly(t *testing.T) {
  candidate := will_it_fly
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{3, 2, 3}, 9), expected: true },
     { actual: candidate([]int{1, 2}, 5), expected: false },
     { actual: candidate([]int{3}, 5), expected: true },
     { actual: candidate([]int{3, 2, 3}, 1), expected: false },
     { actual: candidate([]int{1, 2, 3}, 6), expected: false },
     { actual: candidate([]int{5}, 5), expected: true },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
