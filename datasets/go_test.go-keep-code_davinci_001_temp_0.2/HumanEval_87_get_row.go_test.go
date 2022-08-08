package get_row_test

import (
    "testing"
    "fmt"
)

// You are given a 2 dimensional data, as a nested lists,
// which is similar to matrix, however, unlike matrices,
// each row may contain a different number of columns.
// Given lst, and integer x, find integers x in the list,
// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
// each tuple is a coordinate - (row, columns), starting with 0.
// Sort coordinates initially by rows in ascending order.
// Also, sort coordinates of the row by columns in descending order.
// Examples:
// get_row([
// [1,2,3,4,5,6],
// [1,2,3,4,1,6],
// [1,2,3,4,5,1]
// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
// get_row([], 1) == []
// get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
func get_row(lst [][]int, x int) [][]interface{} {
    var result [][]interface{}
    for i, row := range lst {
        for j, col := range row {
            if col == x {
                result = append(result, []interface{}{i, j})
            }
        }
    }
    return result
}


func TestGet_Row(t *testing.T) {
  candidate := get_row
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([][]int{[]int{1, 2, 3, 4, 5, 6}, []int{1, 2, 3, 4, 1, 6}, []int{1, 2, 3, 4, 5, 1}}, 1), expected: [][]int{[]interface{}{0, 0}, []interface{}{1, 4}, []interface{}{1, 0}, []interface{}{2, 5}, []interface{}{2, 0}} },
     { actual: candidate([][]int{[]int{1, 2, 3, 4, 5, 6}, []int{1, 2, 3, 4, 5, 6}, []int{1, 2, 3, 4, 5, 6}, []int{1, 2, 3, 4, 5, 6}, []int{1, 2, 3, 4, 5, 6}, []int{1, 2, 3, 4, 5, 6}}, 2), expected: [][]int{[]interface{}{0, 1}, []interface{}{1, 1}, []interface{}{2, 1}, []interface{}{3, 1}, []interface{}{4, 1}, []interface{}{5, 1}} },
     { actual: candidate([][]int{[]int{1, 2, 3, 4, 5, 6}, []int{1, 2, 3, 4, 5, 6}, []int{1, 1, 3, 4, 5, 6}, []int{1, 2, 1, 4, 5, 6}, []int{1, 2, 3, 1, 5, 6}, []int{1, 2, 3, 4, 1, 6}, []int{1, 2, 3, 4, 5, 1}}, 1), expected: [][]int{[]interface{}{0, 0}, []interface{}{1, 0}, []interface{}{2, 1}, []interface{}{2, 0}, []interface{}{3, 2}, []interface{}{3, 0}, []interface{}{4, 3}, []interface{}{4, 0}, []interface{}{5, 4}, []interface{}{5, 0}, []interface{}{6, 5}, []interface{}{6, 0}} },
     { actual: candidate([][]int{}, 1), expected: [][]interface{}{} },
     { actual: candidate([][]int{[]int{1}}, 2), expected: [][]interface{}{} },
     { actual: candidate([]interface{}{[]interface{}{}, []int{1}, []int{1, 2, 3}}, 3), expected: [][]int{[]interface{}{2, 2}} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
