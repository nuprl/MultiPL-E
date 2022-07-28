package minSubArraySum_test

import (
    "testing"
    "fmt"
)

// Given an array of integers nums, find the minimum sum of any non-empty sub-array
// of nums.
// Example
// minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
// minSubArraySum([-1, -2, -3]) == -6
func minSubArraySum(nums []int) int {
    if len(nums) == 0 {
        return 0
    }
    min := nums[0]
    sum := 0
    for _, v := range nums {
        sum += v
        if sum < min {
            min = sum
        }
        if sum > 0 {
            sum = 0
        }
    }
    return min
}


func TestMinsubarraysum(t *testing.T) {
  candidate := minSubArraySum
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{2, 3, 4, 1, 2, 4}), expected: 1 },
     { actual: candidate([]int{-1, -2, -3}), expected: -6 },
     { actual: candidate([]int{-1, -2, -3, 2, -10}), expected: -14 },
     { actual: candidate([]int{-9999999999999999}), expected: -9999999999999999 },
     { actual: candidate([]int{0, 10, 20, 1000000}), expected: 0 },
     { actual: candidate([]int{-1, -2, -3, 10, -5}), expected: -6 },
     { actual: candidate([]int{100, -1, -2, -3, 10, -5}), expected: -6 },
     { actual: candidate([]int{10, 11, 13, 8, 3, 4}), expected: 3 },
     { actual: candidate([]int{100, -33, 32, -1, 0, -2}), expected: -33 },
     { actual: candidate([]int{-10}), expected: -10 },
     { actual: candidate([]int{7}), expected: 7 },
     { actual: candidate([]int{1, -1}), expected: -1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
