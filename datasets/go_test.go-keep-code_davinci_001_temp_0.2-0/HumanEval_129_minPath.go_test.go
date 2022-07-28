package minPath_test

import (
    "testing"
    "fmt"
)

// Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
// each cell of the grid contains a value. Every integer in the range [1, N * N]
// inclusive appears exactly once on the cells of the grid.
// You have to find the minimum path of length k in the grid. You can start
// from any cell, and in each step you can move to any of the neighbor cells,
// in other words, you can go to cells which share an edge with you current
// cell.
// Please note that a path of length k means visiting exactly k cells (not
// necessarily distinct).
// You CANNOT go off the grid.
// A path A (of length k) is considered less than a path B (of length k) if
// after making the ordered lists of the values on the cells that A and B go
// through (let's call them lst_A and lst_B), lst_A is lexicographically less
// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
// lst_A[j] = lst_B[j].
// It is guaranteed that the answer is unique.
// Return an ordered list of the values on the cells that the minimum path go through.
// Examples:
// Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
// Output: [1, 2, 1]
// Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
// Output: [1]
func minPath(grid [][]int, k int) []int {
    // 可以从任意位置开始，每次只能走一步，走到第k步，记录走过的路径
    // 每次走到一个位置，记录当前位置的值，并且记录当前位置的值的下标
    // 如果当前位置的值的下标小于k，则可以继续走下一步
    // 如果当前位置的值的下标等于k，则记录当前位置的值，并且记录当前位置的值的下标
    // 如果当前位置的值的下标大于k，则跳过当前位置，记录当前位置的值，并且记录当前位置的值的下标
    // 如果当前位置的值的下标等于N*N，则记录当前位置的值，并且记录当前位置的值的下标
    // 如果当前位置的值

func TestMinpath(t *testing.T) {
  candidate := minPath
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([][]int{[]int{1, 2, 3}, []int{4, 5, 6}, []int{7, 8, 9}}, 3), expected: []int{1, 2, 1} },
     { actual: candidate([][]int{[]int{5, 9, 3}, []int{4, 1, 6}, []int{7, 8, 2}}, 1), expected: []int{1} },
     { actual: candidate([][]int{[]int{1, 2, 3, 4}, []int{5, 6, 7, 8}, []int{9, 10, 11, 12}, []int{13, 14, 15, 16}}, 4), expected: []int{1, 2, 1, 2} },
     { actual: candidate([][]int{[]int{6, 4, 13, 10}, []int{5, 7, 12, 1}, []int{3, 16, 11, 15}, []int{8, 14, 9, 2}}, 7), expected: []int{1, 10, 1, 10, 1, 10, 1} },
     { actual: candidate([][]int{[]int{8, 14, 9, 2}, []int{6, 4, 13, 15}, []int{5, 7, 1, 12}, []int{3, 10, 11, 16}}, 5), expected: []int{1, 7, 1, 7, 1} },
     { actual: candidate([][]int{[]int{11, 8, 7, 2}, []int{5, 16, 14, 4}, []int{9, 3, 15, 6}, []int{12, 13, 10, 1}}, 9), expected: []int{1, 6, 1, 6, 1, 6, 1, 6, 1} },
     { actual: candidate([][]int{[]int{12, 13, 10, 1}, []int{9, 3, 15, 6}, []int{5, 16, 14, 4}, []int{11, 8, 7, 2}}, 12), expected: []int{1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6} },
     { actual: candidate([][]int{[]int{2, 7, 4}, []int{3, 1, 5}, []int{6, 8, 9}}, 8), expected: []int{1, 3, 1, 3, 1, 3, 1, 3} },
     { actual: candidate([][]int{[]int{6, 1, 5}, []int{3, 8, 9}, []int{2, 7, 4}}, 8), expected: []int{1, 5, 1, 5, 1, 5, 1, 5} },
     { actual: candidate([][]int{[]int{1, 2}, []int{3, 4}}, 10), expected: []int{1, 2, 1, 2, 1, 2, 1, 2, 1, 2} },
     { actual: candidate([][]int{[]int{1, 3}, []int{3, 2}}, 10), expected: []int{1, 3, 1, 3, 1, 3, 1, 3, 1, 3} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
