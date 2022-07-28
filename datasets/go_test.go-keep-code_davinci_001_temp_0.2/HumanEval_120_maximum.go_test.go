package maximum_test

import (
    "testing"
    "fmt"
)

// Given an array arr of integers and a positive integer k, return a sorted list 
// of length k with the maximum k numbers in arr.
// Example 1:
// Input: arr = [-3, -4, 5], k = 3
// Output: [-4, -3, 5]
// Example 2:
// Input: arr = [4, -4, 4], k = 2
// Output: [4, 4]
// Example 3:
// Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
// Output: [2]
// Note:
// 1. The length of the array will be in the range of [1, 1000].
// 2. The elements in the array will be in the range of [-1000, 1000].
// 3. 0 <= k <= len(arr)
func maximum(arr []int, k int) []int {
    // 思路：排序，取前k个数
    // 时间复杂度：O(nlog(n))
    // 空间复杂度：O(1)
    if len(arr) == 0 || k == 0 {
        return []int{}
    }
    if k >= len(arr) {
        return arr
    }
    sort.Ints(arr)
    return arr[:k]
}


func TestMaximum(t *testing.T) {
  candidate := maximum
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{-3, -4, 5}, 3), expected: []int{-4, -3, 5} },
     { actual: candidate([]int{4, -4, 4}, 2), expected: []int{4, 4} },
     { actual: candidate([]int{-3, 2, 1, 2, -1, -2, 1}, 1), expected: []int{2} },
     { actual: candidate([]int{123, -123, 20, 0, 1, 2, -3}, 3), expected: []int{2, 20, 123} },
     { actual: candidate([]int{-123, 20, 0, 1, 2, -3}, 4), expected: []int{0, 1, 2, 20} },
     { actual: candidate([]int{5, 15, 0, 3, -13, -8, 0}, 7), expected: []int{-13, -8, 0, 0, 3, 5, 15} },
     { actual: candidate([]int{-1, 0, 2, 5, 3, -10}, 2), expected: []int{3, 5} },
     { actual: candidate([]int{1, 0, 5, -7}, 1), expected: []int{5} },
     { actual: candidate([]int{4, -4}, 2), expected: []int{-4, 4} },
     { actual: candidate([]int{-10, 10}, 2), expected: []int{-10, 10} },
     { actual: candidate([]int{1, 2, 3, -23, 243, -400, 0}, 0), expected: []int{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
