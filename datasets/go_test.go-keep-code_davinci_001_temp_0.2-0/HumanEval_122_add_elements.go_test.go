package add_elements_test

import (
    "testing"
    "fmt"
)

// Given a non-empty array of integers arr and an integer k, return
// the sum of the elements with at most two digits from the first k elements of arr.
// Example:
// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
// Output: 24 # sum of 21 + 3
// Constraints:
// 1. 1 <= len(arr) <= 100
// 2. 1 <= k <= len(arr)
func add_elements(arr []int, k int) int {
    sum := 0
    for i := 0; i < k; i++ {
        sum += arr[i]
    }
    return sum
}


func TestAdd_Elements(t *testing.T) {
  candidate := add_elements
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, -2, -3, 41, 57, 76, 87, 88, 99}, 3), expected: -4 },
     { actual: candidate([]int{111, 121, 3, 4000, 5, 6}, 2), expected: 0 },
     { actual: candidate([]int{11, 21, 3, 90, 5, 6, 7, 8, 9}, 4), expected: 125 },
     { actual: candidate([]int{111, 21, 3, 4000, 5, 6, 7, 8, 9}, 4), expected: 24 },
     { actual: candidate([]int{1}, 1), expected: 1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
