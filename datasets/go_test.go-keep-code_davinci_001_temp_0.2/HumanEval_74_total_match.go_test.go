package total_match_test

import (
    "testing"
    "fmt"
)

// Write a function that accepts two lists of strings and returns the list that has 
// total number of chars in the all strings of the list less than the other list.
// if the two lists have the same number of chars, return the first list.
// Examples
// total_match([], []) ➞ []
// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
func total_match(lst1 []string, lst2 []string) []string {
    var lst3 []string
    if len(lst1) == 0 && len(lst2) == 0 {
        return lst3
    }
    if len(lst1) == 0 {
        return lst2
    }
    if len(lst2) == 0 {
        return lst1
    }
    if len(lst1) == len(lst2) {
        return lst1
    }
    if len(lst1) < len(lst2) {
        lst3 = lst1
    } else {
        lst3 = lst2
    }
    return lst3
}


func TestTotal_Match(t *testing.T) {
  candidate := total_match
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{}, []int{}), expected: []int{} },
     { actual: candidate([]string{"hi", "admin"}, []string{"hi", "hi"}), expected: []string{"hi", "hi"} },
     { actual: candidate([]string{"hi", "admin"}, []string{"hi", "hi", "admin", "project"}), expected: []string{"hi", "admin"} },
     { actual: candidate([]string{"4"}, []string{"1", "2", "3", "4", "5"}), expected: []string{"4"} },
     { actual: candidate([]string{"hi", "admin"}, []string{"hI", "Hi"}), expected: []string{"hI", "Hi"} },
     { actual: candidate([]string{"hi", "admin"}, []string{"hI", "hi", "hi"}), expected: []string{"hI", "hi", "hi"} },
     { actual: candidate([]string{"hi", "admin"}, []string{"hI", "hi", "hii"}), expected: []string{"hi", "admin"} },
     { actual: candidate([]string{}, []string{"this"}), expected: []string{} },
     { actual: candidate([]string{"this"}, []string{}), expected: []string{} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
