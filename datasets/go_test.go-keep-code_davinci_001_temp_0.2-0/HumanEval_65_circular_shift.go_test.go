package circular_shift_test

import (
    "testing"
    "fmt"
)

// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
func circular_shift(x int, shift int) string {
    var digits []int
    var result []int
    var i int
    var j int
    var k int
    var l int
    var m int
    var n int
    var o int
    var p int
    var q int
    var r int
    var s int
    var t int
    var u int
    var v int
    var w int
    var x_0 int
    var x_1 int
    var x_2 int
    var x_3 int
    var x_4 int
    var x_5 int
    var x_6 int
    var x_7 int
    var x_8 int
    var x_9 int
    var x_10 int
    var x_11 int
    var x_12 int
    var x_13 int
    var x_14 int
    var x_15 int
    var x_16 int
    var x_17 int
    var x_18 int
    var x_19 int
    var x_20 int
    var x_21 int
    var x_22 int
    var x_23 int
    var x_24 int
    var x_25 int
    var x_26 int
    var x_27 int
    var x_28 int
    var x_29 int
    var x_30 int
    var x_31 int
    var x_32 int
    var x_33 int
    var x_34 int
    var x_35 int
    var x_36 int
    var x_37 int
    var x_38 int
    var x_39 int
    var x_40 int
    var x_41 int
    var x_42 int
    var x_43 int
    var x_44 int
    var x_45 int
    var x_46 int
    var x_47 int
    var x_48 int
    var x_49 int
    var x_50 int
    var x_51 int
    var x_52 int
    var x_53 int
    var x_54 int
    var x_55 int
    var x_56 int
    var x_57 int
    var x_58 int

func TestCircular_Shift(t *testing.T) {
  candidate := circular_shift
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(100, 2), expected: "001" },
     { actual: candidate(12, 2), expected: "12" },
     { actual: candidate(97, 8), expected: "79" },
     { actual: candidate(12, 1), expected: "21" },
     { actual: candidate(11, 101), expected: "11" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
