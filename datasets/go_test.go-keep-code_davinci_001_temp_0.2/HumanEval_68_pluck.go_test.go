package pluck_test

import (
    "testing"
    "fmt"
)

// "Given an array representing a branch of a tree that has non-negative integer nodes
// your task is to pluck one of the nodes and return it.
// The plucked node should be the node with the smallest even value.
// If multiple nodes with the same smallest even value are found return the node that has smallest index.
// The plucked node should be returned in a list, [ smalest_value, its index ],
// If there are no even values or the given array is empty, return [].
// Example 1:
// Input: [4,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index.
// Example 2:
// Input: [1,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index. 
// Example 3:
// Input: []
// Output: []
// Example 4:
// Input: [5, 0, 3, 0, 4, 2]
// Output: [0, 1]
// Explanation: 0 is the smallest value, but  there are two zeros,
// so we will choose the first zero, which has the smallest index.
// Constraints:
// * 1 <= nodes.length <= 10000
// * 0 <= node.value
func pluck(arr []int) []int {
    if len(arr) == 0 {
        return []int{}
    }
    var result []int
    var min int
    var index int
    for i, v := range arr {
        if v%2 == 0 {
            if min == 0 {
                min = v
                index = i
            } else if v < min {
                min = v
                index = i
            }
        }
    }
    result = append(result, min)
    result = append(result, index)
    return result
}


func TestPluck(t *testing.T) {
  candidate := pluck
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{4, 2, 3}), expected: []int{2, 1} },
     { actual: candidate([]int{1, 2, 3}), expected: []int{2, 1} },
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{5, 0, 3, 0, 4, 2}), expected: []int{0, 1} },
     { actual: candidate([]int{1, 2, 3, 0, 5, 3}), expected: []int{0, 3} },
     { actual: candidate([]int{5, 4, 8, 4, 8}), expected: []int{4, 1} },
     { actual: candidate([]int{7, 6, 7, 1}), expected: []int{6, 1} },
     { actual: candidate([]int{7, 9, 7, 1}), expected: []int{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
