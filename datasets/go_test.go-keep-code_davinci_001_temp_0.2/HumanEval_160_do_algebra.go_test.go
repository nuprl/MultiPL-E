package do_algebra_test

import (
    "testing"
    "fmt"
)

// Given two lists operator, and operand. The first list has basic algebra operations, and 
// the second list is a list of integers. Use the two given lists to build the algebric 
// expression and return the evaluation of this expression.
// The basic algebra operations:
// Addition ( + ) 
// Subtraction ( - ) 
// Multiplication ( * ) 
// Floor division ( // ) 
// Exponentiation ( ** ) 
// Example:
// operator['+', '*', '-']
// array = [2, 3, 4, 5]
// result = 2 + 3 * 4 - 5
// => result = 9
// Note:
// The length of operator list is equal to the length of operand list minus one.
// Operand is a list of of non-negative integers.
// Operator list has at least one operator, and operand list has at least two operands.
func do_algebra(operator []string, operand []int) int {
    return 0
}


func TestDo_Algebra(t *testing.T) {
  candidate := do_algebra
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]string{"**", "*", "+"}, []int{2, 3, 4, 5}), expected: 37 },
     { actual: candidate([]string{"+", "*", "-"}, []int{2, 3, 4, 5}), expected: 9 },
     { actual: candidate([]string{"//", "*"}, []int{7, 3, 4}), expected: 8 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
