package right_angle_triangle_test

import (
    "testing"
    "fmt"
)

// Given the lengths of the three sides of a triangle. Return True if the three
// sides form a right-angled triangle, False otherwise.
// A right-angled triangle is a triangle in which one angle is right angle or 
// 90 degree.
// Example:
// right_angle_triangle(3, 4, 5) == True
// right_angle_triangle(1, 2, 3) == False
func right_angle_triangle(a int, b int, c int) bool {
    if a*a + b*b == c*c {
        return true
    }
    return false
}


func TestRight_Angle_Triangle(t *testing.T) {
  candidate := right_angle_triangle
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3, 4, 5), expected: true },
     { actual: candidate(1, 2, 3), expected: false },
     { actual: candidate(10, 6, 8), expected: true },
     { actual: candidate(2, 2, 2), expected: false },
     { actual: candidate(7, 24, 25), expected: true },
     { actual: candidate(10, 5, 7), expected: false },
     { actual: candidate(5, 12, 13), expected: true },
     { actual: candidate(15, 8, 17), expected: true },
     { actual: candidate(48, 55, 73), expected: true },
     { actual: candidate(1, 1, 1), expected: false },
     { actual: candidate(2, 2, 10), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
