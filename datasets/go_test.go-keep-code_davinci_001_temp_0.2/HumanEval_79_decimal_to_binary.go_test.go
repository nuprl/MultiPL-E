package decimal_to_binary_test

import (
    "testing"
    "fmt"
)

// You will be given a number in decimal form and your task is to convert it to
// binary format. The function should return a string, with each character representing a binary
// number. Each character in the string will be '0' or '1'.
// There will be an extra couple of characters 'db' at the beginning and at the end of the string.
// The extra characters are there to help with the format.
// Examples:
// decimal_to_binary(15)   # returns "db1111db"
// decimal_to_binary(32)   # returns "db100000db"
func decimal_to_binary(decimal int) string {
    var result string
    for decimal > 0 {
        result = fmt.Sprintf("%d%s", decimal % 2, result)
        decimal /= 2
    }
    return fmt.Sprintf("db%sdb", result)
}


func TestDecimal_To_Binary(t *testing.T) {
  candidate := decimal_to_binary
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(0), expected: "db0db" },
     { actual: candidate(32), expected: "db100000db" },
     { actual: candidate(103), expected: "db1100111db" },
     { actual: candidate(15), expected: "db1111db" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
