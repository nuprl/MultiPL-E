package sorted_list_sum_test

import (
    "testing"
    "fmt"
)

// Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
func sorted_list_sum(lst []string) []string {
    var result []string
    for _, s := range lst {
        if len(s) % 2 == 0 {
            result = append(result, s)
        }
    }
    return result
}


func TestSorted_List_Sum(t *testing.T) {
  candidate := sorted_list_sum
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]string{"aa", "a", "aaa"}), expected: []string{"aa"} },
     { actual: candidate([]string{"school", "AI", "asdf", "b"}), expected: []string{"AI", "asdf", "school"} },
     { actual: candidate([]string{"d", "b", "c", "a"}), expected: []string{} },
     { actual: candidate([]string{"d", "dcba", "abcd", "a"}), expected: []string{"abcd", "dcba"} },
     { actual: candidate([]string{"AI", "ai", "au"}), expected: []string{"AI", "ai", "au"} },
     { actual: candidate([]string{"a", "b", "b", "c", "c", "a"}), expected: []string{} },
     { actual: candidate([]string{"aaaa", "bbbb", "dd", "cc"}), expected: []string{"cc", "dd", "aaaa", "bbbb"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
