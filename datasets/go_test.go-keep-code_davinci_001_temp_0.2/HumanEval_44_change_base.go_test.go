package change_base_test

import (
    "testing"
    "fmt"
)

// Change numerical base of input number x to base.
// return string representation after the conversion.
// base numbers are less than 10.
// >>> change_base(8, 3)
// '22'
// >>> change_base(8, 2)
// '1000'
// >>> change_base(7, 2)
// '111'
func change_base(x int, base int) string {
    if x < base {
        return string(x + '0')
    }
    return change_base(x / base, base) + string(x % base + '0')
}


func TestChange_Base(t *testing.T) {
  candidate := change_base
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(8, 3), expected: "22" },
     { actual: candidate(9, 3), expected: "100" },
     { actual: candidate(234, 2), expected: "11101010" },
     { actual: candidate(16, 2), expected: "10000" },
     { actual: candidate(8, 2), expected: "1000" },
     { actual: candidate(7, 2), expected: "111" },
     { actual: candidate(2, 3), expected: "2" },
     { actual: candidate(3, 4), expected: "3" },
     { actual: candidate(4, 5), expected: "4" },
     { actual: candidate(5, 6), expected: "5" },
     { actual: candidate(6, 7), expected: "6" },
     { actual: candidate(7, 8), expected: "7" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
