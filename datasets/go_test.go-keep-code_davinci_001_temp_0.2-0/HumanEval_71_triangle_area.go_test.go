package triangle_area_test

import (
    "testing"
    "fmt"
)

// Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater 
// than the third side.
// Example:
// triangle_area(3, 4, 5) == 6.00
// triangle_area(1, 2, 10) == -1
func triangle_area(a int, b int, c int) float64 {
    // Write your code here
    if a+b>c && a+c>b && b+c>a {
        p := (a+b+c)/2
        return float64(p*(p-a)*(p-b)*(p-c))*0.5
    } else {
        return -1
    }
}


func TestTriangle_Area(t *testing.T) {
  candidate := triangle_area
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(3, 4, 5), expected: 6.0 },
     { actual: candidate(1, 2, 10), expected: -1 },
     { actual: candidate(4, 8, 5), expected: 8.18 },
     { actual: candidate(2, 2, 2), expected: 1.73 },
     { actual: candidate(1, 2, 3), expected: -1 },
     { actual: candidate(10, 5, 7), expected: 16.25 },
     { actual: candidate(2, 6, 3), expected: -1 },
     { actual: candidate(1, 1, 1), expected: 0.43 },
     { actual: candidate(2, 2, 10), expected: -1 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
