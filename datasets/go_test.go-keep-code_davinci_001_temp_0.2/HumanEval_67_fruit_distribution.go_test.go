package fruit_distribution_test

import (
    "testing"
    "fmt"
)

// In this task, you will be given a string that represents a number of apples and oranges 
// that are distributed in a basket of fruit this basket contains 
// apples, oranges, and mango fruits. Given the string that represents the total number of 
// the oranges and apples and an integer that represent the total number of the fruits 
// in the basket return the number of the mango fruits in the basket.
// for examble:
// fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
// fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
// fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
// fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
func fruit_distribution(s string, n int) int {
    var apples, oranges, mangoes int
    fmt.Sscanf(s, "%d apples and %d oranges", &apples, &oranges)
    mangoes = n - apples - oranges
    return mangoes
}


func TestFruit_Distribution(t *testing.T) {
  candidate := fruit_distribution
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("5 apples and 6 oranges", 19), expected: 8 },
     { actual: candidate("5 apples and 6 oranges", 21), expected: 10 },
     { actual: candidate("0 apples and 1 oranges", 3), expected: 2 },
     { actual: candidate("1 apples and 0 oranges", 3), expected: 2 },
     { actual: candidate("2 apples and 3 oranges", 100), expected: 95 },
     { actual: candidate("2 apples and 3 oranges", 5), expected: 0 },
     { actual: candidate("1 apples and 100 oranges", 120), expected: 19 },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
