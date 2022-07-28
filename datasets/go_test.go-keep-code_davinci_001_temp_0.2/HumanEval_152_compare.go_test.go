package compare_test

import (
    "testing"
    "fmt"
)

// I think we all remember that feeling when the result of some long-awaited
// event is finally known. The feelings and thoughts you have at that moment are
// definitely worth noting down and comparing.
// Your task is to determine if a person correctly guessed the results of a number of matches.
// You are given two arrays of scores and guesses of equal length, where each index shows a match. 
// Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
// the value is 0, and if not, the value is the absolute difference between the guess and the score.
// example:
// compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
// compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
func compare(game []int, guess []int) []int {
    var result []int
    for i := 0; i < len(game); i++ {
        if game[i] == guess[i] {
            result = append(result, 0)
        } else {
            result = append(result, abs(game[i] - guess[i]))
        }
    }
    return result
}


func TestCompare(t *testing.T) {
  candidate := compare
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]int{1, 2, 3, 4, 5, 1}, []int{1, 2, 3, 4, 2, -2}), expected: []int{0, 0, 0, 0, 3, 3} },
     { actual: candidate([]int{0, 0, 0, 0, 0, 0}, []int{0, 0, 0, 0, 0, 0}), expected: []int{0, 0, 0, 0, 0, 0} },
     { actual: candidate([]int{1, 2, 3}, []int{-1, -2, -3}), expected: []int{2, 4, 6} },
     { actual: candidate([]int{1, 2, 3, 5}, []int{-1, 2, 3, 4}), expected: []int{2, 0, 0, 1} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
