package get_max_triples_test

import (
    "testing"
    "fmt"
)

// You are given a positive integer n. You have to create an integer array a of length n.
// For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
// Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
// and a[i] + a[j] + a[k] is a multiple of 3.
// Example :
// Input: n = 5
// Output: 1
// Explanation: 
// a = [1, 3, 7, 13, 21]
// The only valid triple is (1, 7, 13).
func get_max_triples(n int) int {
    if n < 3 {
        return 0
    }
    a := make([]int, n)
    for i := 1; i <= n; i++ {
        a[i-1] = i * i - i + 1
    }
    var res int
    for i := 0; i < n; i++ {
        for j := i + 1; j < n; j++ {
            for k := j + 1; k < n; k++ {
                if a[i] + a[j] + a[k] % 3 == 0 {
                    res++
                }
            }
        }
    }
    return res
}


func TestGet_Max_Triples(t *testing.T) {
  candidate := get_max_triples
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5), expected: 1 },
     { actual: candidate(6), expected: 4 },
     { actual: candidate(10), expected: 36 },
     { actual: candidate(100), expected: 53361 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
