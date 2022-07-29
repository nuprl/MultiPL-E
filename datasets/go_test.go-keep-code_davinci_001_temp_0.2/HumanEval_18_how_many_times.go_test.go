package how_many_times_test

import (
    "testing"
    "fmt"
)

// Find how many times a given substring can be found in the original string. Count overlaping cases.
// >>> how_many_times('', 'a')
// 0
// >>> how_many_times('aaa', 'a')
// 3
// >>> how_many_times('aaaa', 'aa')
// 3
func how_many_times(myString string, substring string) int {
    var count int
    for i := 0; i < len(myString); i++ {
        if myString[i:i+len(substring)] == substring {
            count++
        }
    }
    return count
}


func TestHow_Many_Times(t *testing.T) {
  candidate := how_many_times
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("", "x"), expected: 0 },
     { actual: candidate("xyxyxyx", "x"), expected: 4 },
     { actual: candidate("cacacacac", "cac"), expected: 4 },
     { actual: candidate("john doe", "john"), expected: 1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
