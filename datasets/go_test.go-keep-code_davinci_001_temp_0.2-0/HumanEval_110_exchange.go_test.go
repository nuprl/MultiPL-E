package exchange_test

import (
    "testing"
    "fmt"
)

// In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of exchanged elements between lst1 and lst2.
// If it is possible to exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
func exchange(lst1 []int, lst2 []int) string {
    // Write your code here
    var result string
    for _, v := range lst1 {
        if v % 2 == 0 {
            result = "YES"
        } else {
            result = "NO"
            break
        }
    }
    return result
}


func TestExchange(t *testing.T) {
  candidate := exchange
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 3, 4}, []int{1, 2, 3, 4}), expected: "YES" },
     { actual: candidate([]int{1, 2, 3, 4}, []int{1, 5, 3, 4}), expected: "NO" },
     { actual: candidate([]int{1, 2, 3, 4}, []int{2, 1, 4, 3}), expected: "YES" },
     { actual: candidate([]int{5, 7, 3}, []int{2, 6, 4}), expected: "YES" },
     { actual: candidate([]int{5, 7, 3}, []int{2, 6, 3}), expected: "NO" },
     { actual: candidate([]int{3, 2, 6, 1, 8, 9}, []int{3, 5, 5, 1, 1, 1}), expected: "NO" },
     { actual: candidate([]int{100, 200}, []int{200, 200}), expected: "YES" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
