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
    var lst4 []string
    var lst5 []string
    var lst6 []string
    var lst7 []string
    var lst8 []string
    var lst9 []string
    var lst10 []string
    var lst11 []string
    var lst12 []string
    var lst13 []string
    var lst14 []string
    var lst15 []string
    var lst16 []string
    var lst17 []string
    var lst18 []string
    var lst19 []string
    var lst20 []string
    var lst21 []string
    var lst22 []string
    var lst23 []string
    var lst24 []string
    var lst25 []string
    var lst26 []string
    var lst27 []string
    var lst28 []string
    var lst29 []string
    var lst30 []string
    var lst31 []string
    var lst32 []string
    var lst33 []string
    var lst34 []string
    var lst35 []string
    var lst36 []string
    var lst37 []string
    var lst38 []string
    var lst39 []string
    var lst40 []string
    var lst41 []string
    var lst42 []string
    var lst43 []string
    var lst44 []string
    var lst45 []string
    var lst46 []string
    var lst47 []string
    var lst48 []string
    var lst49 []string
    var lst50 []string
    var lst51 []string
    var lst52 []string
    var lst53 []string
    var lst54 []string
    var lst55 []string
    var lst56 []string
    var lst57 []string
    var lst58 []string
    var lst59 []string
    var lst60 []string
    var lst61 []string
    var lst62 []string
    var lst63 []string
    var lst64 []string
    var l

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
