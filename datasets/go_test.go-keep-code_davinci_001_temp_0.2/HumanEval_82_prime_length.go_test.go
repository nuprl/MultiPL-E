package prime_length_test

import (
    "testing"
    "fmt"
)

// Write a function that takes a string and returns True if the string
// length is a prime number or False otherwise
// Examples
// prime_length('Hello') == True
// prime_length('abcdcba') == True
// prime_length('kittens') == True
// prime_length('orange') == False
func prime_length(myString string) bool {
    // your code here
    return false
}


func TestPrime_Length(t *testing.T) {
  candidate := prime_length
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Hello"), expected: true },
     { actual: candidate("abcdcba"), expected: true },
     { actual: candidate("kittens"), expected: true },
     { actual: candidate("orange"), expected: false },
     { actual: candidate("wow"), expected: true },
     { actual: candidate("world"), expected: true },
     { actual: candidate("MadaM"), expected: true },
     { actual: candidate("Wow"), expected: true },
     { actual: candidate(""), expected: false },
     { actual: candidate("HI"), expected: true },
     { actual: candidate("go"), expected: true },
     { actual: candidate("gogo"), expected: false },
     { actual: candidate("aaaaaaaaaaaaaaa"), expected: false },
     { actual: candidate("Madam"), expected: true },
     { actual: candidate("M"), expected: false },
     { actual: candidate("0"), expected: false },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
