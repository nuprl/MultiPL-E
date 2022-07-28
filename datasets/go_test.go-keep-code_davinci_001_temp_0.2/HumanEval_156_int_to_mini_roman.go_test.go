package int_to_mini_roman_test

import (
    "testing"
    "fmt"
)

// Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
// Examples:
// >>> int_to_mini_roman(19) == 'xix'
// >>> int_to_mini_roman(152) == 'clii'
// >>> int_to_mini_roman(426) == 'cdxxvi'
func int_to_mini_roman(number int) string {
    var result string
    var roman_numerals = map[int]string{
        1: "i",
        4: "iv",
        5: "v",
        9: "ix",
        10: "x",
        40: "xl",
        50: "l",
        90: "xc",
        100: "c",
        400: "cd",
        500: "d",
        900: "cm",
        1000: "m",
    }
    for key, value := range roman_numerals {
        if number >= key {
            result += value
            number -= key
        }
    }
    return result
}


func TestInt_To_Mini_Roman(t *testing.T) {
  candidate := int_to_mini_roman
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(19), expected: "xix" },
     { actual: candidate(152), expected: "clii" },
     { actual: candidate(251), expected: "ccli" },
     { actual: candidate(426), expected: "cdxxvi" },
     { actual: candidate(500), expected: "d" },
     { actual: candidate(1), expected: "i" },
     { actual: candidate(4), expected: "iv" },
     { actual: candidate(43), expected: "xliii" },
     { actual: candidate(90), expected: "xc" },
     { actual: candidate(94), expected: "xciv" },
     { actual: candidate(532), expected: "dxxxii" },
     { actual: candidate(900), expected: "cm" },
     { actual: candidate(994), expected: "cmxciv" },
     { actual: candidate(1000), expected: "m" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
