package max_fill_test

import (
    "testing"
    "fmt"
)

// You are given a rectangular grid of wells. Each row represents a single well,
// and each 1 in a row represents a single unit of water.
// Each well has a corresponding bucket that can be used to extract water from it, 
// and all buckets have the same capacity.
// Your task is to use the buckets to empty the wells.
// Output the number of times you need to lower the buckets.
// Example 1:
// Input: 
// grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
// bucket_capacity : 1
// Output: 6
// Example 2:
// Input: 
// grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
// bucket_capacity : 2
// Output: 5
// Example 3:
// Input: 
// grid : [[0,0,0], [0,0,0]]
// bucket_capacity : 5
// Output: 0
// Constraints:
// * all wells have the same length
// * 1 <= grid.length <= 10^2
// * 1 <= grid[:,1].length <= 10^2
// * grid[i][j] -> 0 | 1
// * 1 <= capacity <= 10
func max_fill(grid [][]int, capacity int) int {
    m := len(grid)
    n := len(grid[0])
    max_fill := 0
    for i := 0; i < m; i++ {
        for j := 0; j < n; j++ {
            if grid[i][j] == 1 {
                max_fill += capacity
            } else {
                max_fill -= capacity
            }
            if max_fill < 0 {
                max_fill = 0
            }
        }
    }
    return max_fill
}


func TestMax_Fill(t *testing.T) {
  candidate := max_fill
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([][]int{[]int{0, 0, 1, 0}, []int{0, 1, 0, 0}, []int{1, 1, 1, 1}}, 1), expected: 6 },
     { actual: candidate([][]int{[]int{0, 0, 1, 1}, []int{0, 0, 0, 0}, []int{1, 1, 1, 1}, []int{0, 1, 1, 1}}, 2), expected: 5 },
     { actual: candidate([][]int{[]int{0, 0, 0}, []int{0, 0, 0}}, 5), expected: 0 },
     { actual: candidate([][]int{[]int{1, 1, 1, 1}, []int{1, 1, 1, 1}}, 2), expected: 4 },
     { actual: candidate([][]int{[]int{1, 1, 1, 1}, []int{1, 1, 1, 1}}, 9), expected: 2 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
