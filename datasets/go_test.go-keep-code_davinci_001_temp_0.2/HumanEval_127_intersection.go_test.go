package intersection_test

import (
    "testing"
    "fmt"
)

// You are given two intervals,
// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
// The given intervals are closed which means that the interval (start, end)
// includes both start and end.
// For each given interval, it is assumed that its start is less or equal its end.
// Your task is to determine whether the length of intersection of these two 
// intervals is a prime number.
// Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
// which its length is 1, which not a prime number.
// If the length of the intersection is a prime number, return "YES",
// otherwise, return "NO".
// If the two intervals don't intersect, return "NO".
// [input/output] samples:
// intersection((1, 2), (2, 3)) ==> "NO"
// intersection((-1, 1), (0, 4)) ==> "NO"
// intersection((-3, -1), (-5, 5)) ==> "YES"
func intersection(interval1 []interface{}, interval2 []interface{}) string {
    // Write your code here
    return "NO"
}


func TestIntersection(t *testing.T) {
  candidate := intersection
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]interface{}{1, 2}, []interface{}{2, 3}), expected: "NO" },
     { actual: candidate([]interface{}{-1, 1}, []interface{}{0, 4}), expected: "NO" },
     { actual: candidate([]interface{}{-3, -1}, []interface{}{-5, 5}), expected: "YES" },
     { actual: candidate([]interface{}{-2, 2}, []interface{}{-4, 0}), expected: "YES" },
     { actual: candidate([]interface{}{-11, 2}, []interface{}{-1, -1}), expected: "NO" },
     { actual: candidate([]interface{}{1, 2}, []interface{}{3, 5}), expected: "NO" },
     { actual: candidate([]interface{}{1, 2}, []interface{}{1, 2}), expected: "NO" },
     { actual: candidate([]interface{}{-2, -2}, []interface{}{-3, -2}), expected: "NO" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
