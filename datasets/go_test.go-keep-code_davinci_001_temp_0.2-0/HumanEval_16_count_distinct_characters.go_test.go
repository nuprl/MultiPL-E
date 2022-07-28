package count_distinct_characters_test

import (
    "testing"
    "fmt"
)

// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> count_distinct_characters('xyzXYZ')
// 3
// >>> count_distinct_characters('Jerry')
// 4
func count_distinct_characters(myString string) int {
    var distinctCharacters int
    for _, char := range myString {
        if char >= 65 && char <= 90 {
            distinctCharacters++
        } else if char >= 97 && char <= 122 {
            distinctCharacters++
        }
    }
    return distinctCharacters
}


func TestCount_Distinct_Characters(t *testing.T) {
  candidate := count_distinct_characters
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: 0 },
     { actual: candidate("abcde"), expected: 5 },
     { actual: candidate("abcdecadeCADE"), expected: 5 },
     { actual: candidate("aaaaAAAAaaaa"), expected: 1 },
     { actual: candidate("Jerry jERRY JeRRRY"), expected: 5 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
