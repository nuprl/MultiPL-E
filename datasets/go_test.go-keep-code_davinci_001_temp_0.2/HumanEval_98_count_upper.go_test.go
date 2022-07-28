package count_upper_test

import (
    "testing"
    "fmt"
)

// Given a string s, count the number of uppercase vowels in even indices.
// For example:
// count_upper('aBCdEf') returns 1
// count_upper('abcdefg') returns 0
// count_upper('dBBE') returns 0
func count_upper(s string) int {
    var count int
    for i, c := range s {
        if c >= 'A' && c <= 'Z' && i % 2 == 0 {
            count++
        }
    }
    return count
}


func TestCount_Upper(t *testing.T) {
  candidate := count_upper
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("aBCdEf"), expected: 1 },
     { actual: candidate("abcdefg"), expected: 0 },
     { actual: candidate("dBBE"), expected: 0 },
     { actual: candidate("B"), expected: 0 },
     { actual: candidate("U"), expected: 1 },
     { actual: candidate(""), expected: 0 },
     { actual: candidate("EEEE"), expected: 2 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
