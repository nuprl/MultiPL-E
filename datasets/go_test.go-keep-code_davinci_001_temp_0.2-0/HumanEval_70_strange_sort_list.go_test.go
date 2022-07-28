package strange_sort_list_test

import (
    "testing"
    "fmt"
)

// Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
// Examples:
// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
// strange_sort_list([]) == []
func strange_sort_list(lst []int) []int {
    if len(lst) == 0 {
        return lst
    }
    var result []int
    for i := 0; i < len(lst); i++ {
        result = append(result, min(lst))
        lst = remove(lst, min(lst))
        if len(lst) == 0 {
            break
        }
        result = append(result, max(lst))
        lst = remove(lst, max(lst))
    }
    return result
}


func TestStrange_Sort_List(t *testing.T) {
  candidate := strange_sort_list
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 3, 4}), expected: []int{1, 4, 2, 3} },
     { actual: candidate([]int{5, 6, 7, 8, 9}), expected: []int{5, 9, 6, 8, 7} },
     { actual: candidate([]int{1, 2, 3, 4, 5}), expected: []int{1, 5, 2, 4, 3} },
     { actual: candidate([]int{5, 6, 7, 8, 9, 1}), expected: []int{1, 9, 5, 8, 6, 7} },
     { actual: candidate([]int{5, 5, 5, 5}), expected: []int{5, 5, 5, 5} },
     { actual: candidate([]int{}), expected: []int{} },
     { actual: candidate([]int{1, 2, 3, 4, 5, 6, 7, 8}), expected: []int{1, 8, 2, 7, 3, 6, 4, 5} },
     { actual: candidate([]int{0, 2, 2, 2, 5, 5, -5, -5}), expected: []int{-5, 5, -5, 5, 0, 2, 2, 2} },
     { actual: candidate([]int{111111}), expected: []int{111111} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
