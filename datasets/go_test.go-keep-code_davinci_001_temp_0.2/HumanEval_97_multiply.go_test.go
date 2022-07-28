package multiply_test

import (
    "testing"
    "fmt"
)

// Complete the function that takes two integers and returns 
// the product of their unit digits.
// Assume the input is always valid.
// Examples:
// multiply(148, 412) should return 16.
// multiply(19, 28) should return 72.
// multiply(2020, 1851) should return 0.
// multiply(14,-15) should return 20.
func multiply(a int, b int) int {
    var result int
    var a_str string
    var b_str string
    var a_digit int
    var b_digit int
    var a_len int
    var b_len int
    var i int
    var j int
    var k int
    var tmp int
    var carry int
    var sum int
    var digit int
    var tmp_str string
    var tmp_len int
    var tmp_digit int
    var tmp_result int
    var tmp_carry int
    var tmp_sum int
    var tmp_digit_str string
    var tmp_digit_len int
    var tmp_digit_digit int
    var tmp_digit_result int
    var tmp_digit_carry int
    var tmp_digit_sum int
    var tmp_digit_digit_str string
    var tmp_digit_digit_len int
    var tmp_digit_digit_digit int
    var tmp_digit_digit_result int
    var tmp_digit_digit_carry int
    var tmp_digit_digit_sum int
    var tmp_digit_digit_digit_str string
    var tmp_digit_digit_digit_len int
    var tmp_digit_digit_digit_digit int
    var tmp_digit_digit_digit_result int
    var tmp_digit_digit_digit_carry int
    var tmp_digit_digit_digit_sum int
    var tmp_digit_digit_digit_digit_str string
    var tmp_digit_digit_digit_digit_len int
    var tmp_digit_digit_digit_digit_digit int
    var tmp_digit_digit_digit_digit_result int
    var tmp_digit_digit_digit_digit_carry int
    var tmp_digit_digit_digit_digit_sum int
    var tmp_digit_digit_digit_digit_digit_str string
    var tmp_digit_digit_digit_digit_digit_len int
    var tmp_digit_digit_digit_digit_digit_digit int
    var tmp_digit_digit_digit_digit_digit_result int
    var tmp_digit_digit_digit_digit_digit_carry int
    var

func TestMultiply(t *testing.T) {
  candidate := multiply
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(148, 412), expected: 16 },
     { actual: candidate(19, 28), expected: 72 },
     { actual: candidate(2020, 1851), expected: 0 },
     { actual: candidate(14, -15), expected: 20 },
     { actual: candidate(76, 67), expected: 42 },
     { actual: candidate(17, 27), expected: 49 },
     { actual: candidate(0, 1), expected: 0 },
     { actual: candidate(0, 0), expected: 0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
