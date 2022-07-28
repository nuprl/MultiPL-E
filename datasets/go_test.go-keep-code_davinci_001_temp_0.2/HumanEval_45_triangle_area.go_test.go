package triangle_area_test

import (
    "testing"
    "fmt"
)

// Given length of a side and high return area for a triangle.
// >>> triangle_area(5, 3)
// 7.5
func triangle_area(a int, h int) float64 {
    return float64(a * h) / 2
}


func TestTriangle_Area(t *testing.T) {
  candidate := triangle_area
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5, 3), expected: 7.5 },
     { actual: candidate(2, 2), expected: 2.0 },
     { actual: candidate(10, 8), expected: 40.0 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
