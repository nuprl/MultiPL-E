package by_length_test

import (
    "testing"
    "fmt"
)

// Given an array of integers, sort the integers that are between 1 and 9 inclusive,
// reverse the resulting array, and then replace each digit by its corresponding name from
// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
// For example:
// arr = [2, 1, 1, 4, 5, 8, 2, 3]   
// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
// If the array is empty, return an empty array:
// arr = []
// return []
// If the array has any strange number ignore it:
// arr = [1, -1 , 55] 
// -> sort arr -> [-1, 1, 55]
// -> reverse arr -> [55, 1, -1]
// return = ['One']
func by_length(arr []int) []string {
    // Write your code here
    var result []string
    for i := 0; i < len(arr); i++ {
        if arr[i] > 0 && arr[i] < 10 {
            result = append(result, number_to_name(arr[i]))
        }
    }
    return result
}


func TestBy_Length(t *testing.T) {
  candidate := by_length
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{2, 1, 1, 4, 5, 8, 2, 3}), expected: []string{"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"} },
     { actual: candidate([]int{}), expected: []string{} },
     { actual: candidate([]int{1, -1, 55}), expected: []string{"One"} },
     { actual: candidate([]int{1, -1, 3, 2}), expected: []string{"Three", "Two", "One"} },
     { actual: candidate([]int{9, 4, 8}), expected: []string{"Nine", "Eight", "Four"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
