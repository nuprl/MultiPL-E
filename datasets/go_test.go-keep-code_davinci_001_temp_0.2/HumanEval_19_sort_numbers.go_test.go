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
    var nums []int
    for _, num := range numbers {
        switch num {
        case ' ':
            continue
        case 'z':
            nums = append(nums, 0)
        case 'o':
            nums = append(nums, 1)
        case 't':
            nums = append(nums, 2)
        case 'r':
            nums = append(nums, 3)
        case 'f':
            nums = append(nums, 4)
        case 'i':
            nums = append(nums, 5)
        case 'v':
            nums = append(nums, 6)
        case 'e':
            nums = append(nums, 7)
        case 'n':
            nums = append(nums, 8)
        case 't':
            nums = append(nums, 9)
        }
    }
    sort.Ints(nums)
    var result string
    for _, num := range nums {
        switch num {
        case 0:
            result += "zero"
        case 1:
            result += "one"
        case 2:
            result += "two"
        case 3:
            result += "three"
        case 4:
            result += "four"
        case 5:
            result += "five"
        case 6:
            result += "six"
        case 7:
            result += "seven"
        case 8:
            result += "eight"
        case 9:
            result += "nine"
        }
    }
    return result
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
