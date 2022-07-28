package car_race_collision_test

import (
    "testing"
    "fmt"
)

// Imagine a road that's a perfectly straight infinitely long line.
// n cars are driving left to right;  simultaneously, a different set of n cars
// are driving right to left.   The two sets of cars start out being very far from
// each other.  All cars move in the same speed.  Two cars are said to collide
// when a car that's moving left to right hits a car that's moving right to left.
// However, the cars are infinitely sturdy and strong; as a result, they continue moving
// in their trajectory as if they did not collide.
// This function outputs the number of such collisions.
func car_race_collision(n int) int {
    // TODO - Add your code here
    return 0
}


func TestCar_Race_Collision(t *testing.T) {
  candidate := car_race_collision
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(2), expected: 4 },
     { actual: candidate(3), expected: 9 },
     { actual: candidate(4), expected: 16 },
     { actual: candidate(8), expected: 64 },
     { actual: candidate(10), expected: 100 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
