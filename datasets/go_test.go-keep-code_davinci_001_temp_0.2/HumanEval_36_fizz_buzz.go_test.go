package fizz_buzz_test

import (
    "testing"
    "fmt"
)

// Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
// >>> fizz_buzz(50)
// 0
// >>> fizz_buzz(78)
// 2
// >>> fizz_buzz(79)
// 3
func fizz_buzz(n int) int {
    var count int
    for i := 1; i < n; i++ {
        if i % 11 == 0 || i % 13 == 0 {
            count++
        }
    }
    return count
}


func TestFizz_Buzz(t *testing.T) {
  candidate := fizz_buzz
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(50), expected: 0 },
     { actual: candidate(78), expected: 2 },
     { actual: candidate(79), expected: 3 },
     { actual: candidate(100), expected: 3 },
     { actual: candidate(200), expected: 6 },
     { actual: candidate(4000), expected: 192 },
     { actual: candidate(10000), expected: 639 },
     { actual: candidate(100000), expected: 8026 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
