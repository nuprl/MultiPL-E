package choose_num_test

import (
    "testing"
    "fmt"
)

// This function takes two positive numbers x and y and returns the
// biggest even integer number that is in the range [x, y] inclusive. If 
// there's no such number, then the function should return -1.
// For example:
// choose_num(12, 15) = 14
// choose_num(13, 12) = -1
func choose_num(x int, y int) int {
    // Write your code here
    if x > y {
        return -1
    }
    for i := x; i <= y; i++ {
        if i % 2 == 0 {
            return i
        }
    }
    return -1
}


func TestChoose_Num(t *testing.T) {
  candidate := choose_num
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(12, 15), expected: 14 },
     { actual: candidate(13, 12), expected: -1 },
     { actual: candidate(33, 12354), expected: 12354 },
     { actual: candidate(5234, 5233), expected: -1 },
     { actual: candidate(6, 29), expected: 28 },
     { actual: candidate(27, 10), expected: -1 },
     { actual: candidate(7, 7), expected: -1 },
     { actual: candidate(546, 546), expected: 546 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
