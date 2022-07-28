package eat_test

import (
    "testing"
    "fmt"
)

// You're a hungry rabbit, and you already have eaten a certain number of carrots,
// but now you need to eat more carrots to complete the day's meals.
// you should return an array of [ total number of eaten carrots after your meals,
// the number of carrots left after your meals ]
// if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
// Example:
// * eat(5, 6, 10) -> [11, 4]
// * eat(4, 8, 9) -> [12, 1]
// * eat(1, 10, 10) -> [11, 0]
// * eat(2, 11, 5) -> [7, 0]
// Variables:
// @number : integer
// the number of carrots that you have eaten.
// @need : integer
// the number of carrots that you need to eat.
// @remaining : integer
// the number of remaining carrots thet exist in stock
// Constrain:
// * 0 <= number <= 1000
// * 0 <= need <= 1000
// * 0 <= remaining <= 1000
// Have fun :)
func eat(number int, need int, remaining int) []int {
    if number >= need {
        return []int{number - need, remaining}
    }
    return []int{0, remaining - (need - number)}
}


func TestEat(t *testing.T) {
  candidate := eat
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(5, 6, 10), expected: []int{11, 4} },
     { actual: candidate(4, 8, 9), expected: []int{12, 1} },
     { actual: candidate(1, 10, 10), expected: []int{11, 0} },
     { actual: candidate(2, 11, 5), expected: []int{7, 0} },
     { actual: candidate(4, 5, 7), expected: []int{9, 2} },
     { actual: candidate(4, 5, 1), expected: []int{5, 0} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
