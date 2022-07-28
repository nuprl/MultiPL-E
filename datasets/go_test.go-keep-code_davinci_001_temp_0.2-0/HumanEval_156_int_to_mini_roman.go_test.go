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
    var roman_numerals = []string{"i", "v", "x"}
    var roman_numerals_len = len(roman_numerals)
    var roman_numerals_index = 0
    var roman_numerals_value = 0
    var roman_numerals_value_index = 0
    var roman_numerals_value_index_max = 0
    var roman_numerals_value_index_max_index = 0
    var roman_numerals_value_index_max_index_max = 0
    var roman_numerals_value_index_max_index_max_index = 0
    var roman_numerals_value_index_max_index_max_index_max = 0
    var roman_numerals_value_index_max_index_max_index_max_index = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max_index = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max_index_max = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max_index_max_index = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max_index_max_index_max = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max_index_max_index_max_index = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max_index_max_index_max_index_max = 0
    var roman_numerals_value_index_max_index_max_index_max_index_max_index_max_index_max_

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
