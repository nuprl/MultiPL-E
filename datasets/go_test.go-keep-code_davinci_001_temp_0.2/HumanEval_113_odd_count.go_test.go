package odd_count_test

import (
    "testing"
    "fmt"
)

// Given a list of strings, where each string consists of only digits, return a list.
// Each element i of the output should be "the number of odd elements in the
// string i of the input." where all the i's should be replaced by the number
// of odd digits in the i'th string of the input.
// >>> odd_count(['1234567'])
// ["the number of odd elements 4n the str4ng 4 of the 4nput."]
// >>> odd_count(['3',"11111111"])
// ["the number of odd elements 1n the str1ng 1 of the 1nput.",
// "the number of odd elements 8n the str8ng 8 of the 8nput."]
func odd_count(lst []string) []string {
    var result []string
    for _, str := range lst {
        var odd_count int
        for _, c := range str {
            if c % 2 != 0 {
                odd_count++
            }
        }
        result = append(result, fmt.Sprintf("the number of odd elements %dn the str%dng %d of the %dnput.", odd_count, odd_count, odd_count, odd_count))
    }
    return result
}


func TestOdd_Count(t *testing.T) {
  candidate := odd_count
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]string{"1234567"}), expected: []string{"the number of odd elements 4n the str4ng 4 of the 4nput."} },
     { actual: candidate([]string{"3", "11111111"}), expected: []string{"the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."} },
     { actual: candidate([]string{"271", "137", "314"}), expected: []string{"the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
