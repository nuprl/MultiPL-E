package sort_numbers_test

import (
    "testing"
    "fmt"
)

// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers('three one five')
// 'one three five'
func sort_numbers(numbers string) string {
    // Write your code here
    return ""
}


func TestSort_Numbers(t *testing.T) {
  candidate := sort_numbers
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: "" },
     { actual: candidate("three"), expected: "three" },
     { actual: candidate("three five nine"), expected: "three five nine" },
     { actual: candidate("five zero four seven nine eight"), expected: "zero four five seven eight nine" },
     { actual: candidate("six five four three two one zero"), expected: "zero one two three four five six" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
