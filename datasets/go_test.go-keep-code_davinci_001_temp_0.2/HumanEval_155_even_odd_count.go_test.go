package even_odd_count_test

import (
    "testing"
    "fmt"
)

// Given an integer. return a tuple that has the number of even and odd digits respectively.
// Example:
// even_odd_count(-12) ==> (1, 1)
// even_odd_count(123) ==> (1, 2)
func even_odd_count(num int) []interface{} {
    even := 0
    odd := 0
    for num > 0 {
        if num % 2 == 0 {
            even++
        } else {
            odd++
        }
        num = num / 10
    }
    return []interface{}{even, odd}
}


func TestEven_Odd_Count(t *testing.T) {
  candidate := even_odd_count
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(7), expected: []interface{}{0, 1} },
     { actual: candidate(-78), expected: []interface{}{1, 1} },
     { actual: candidate(3452), expected: []interface{}{2, 2} },
     { actual: candidate(346211), expected: []interface{}{3, 3} },
     { actual: candidate(-345821), expected: []interface{}{3, 3} },
     { actual: candidate(-2), expected: []interface{}{1, 0} },
     { actual: candidate(-45347), expected: []interface{}{2, 3} },
     { actual: candidate(0), expected: []interface{}{1, 0} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
