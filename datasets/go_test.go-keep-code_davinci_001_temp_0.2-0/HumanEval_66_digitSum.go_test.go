package digitSum_test

import (
    "testing"
    "fmt"
)

// Task
// Write a function that takes a string as input and returns the sum of the upper characters only'
// ASCII codes.
// Examples:
// digitSum("") => 0
// digitSum("abAB") => 131
// digitSum("abcCd") => 67
// digitSum("helloE") => 69
// digitSum("woArBld") => 131
// digitSum("aAaaaXa") => 153
func digitSum(s string) int {
    var sum int
    for _, v := range s {
        if v >= 65 && v <= 90 {
            sum += int(v)
        }
    }
    return sum
}


func TestDigitsum(t *testing.T) {
  candidate := digitSum
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: 0 },
     { actual: candidate("abAB"), expected: 131 },
     { actual: candidate("abcCd"), expected: 67 },
     { actual: candidate("helloE"), expected: 69 },
     { actual: candidate("woArBld"), expected: 131 },
     { actual: candidate("aAaaaXa"), expected: 153 },
     { actual: candidate(" How are yOu?"), expected: 151 },
     { actual: candidate("You arE Very Smart"), expected: 327 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
