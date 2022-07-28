package encrypt_test

import (
    "testing"
    "fmt"
)

// Create a function encrypt that takes a string as an argument and
// returns a string encrypted with the alphabet being rotated. 
// The alphabet should be rotated in a manner such that the letters 
// shift down by two multiplied to two places.
// For example:
// encrypt('hi') returns 'lm'
// encrypt('asdfghjkl') returns 'ewhjklnop'
// encrypt('gf') returns 'kj'
// encrypt('et') returns 'ix'
func encrypt(s string) string {
    // Write code here
    return s
}


func TestEncrypt(t *testing.T) {
  candidate := encrypt
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("hi"), expected: "lm" },
     { actual: candidate("asdfghjkl"), expected: "ewhjklnop" },
     { actual: candidate("gf"), expected: "kj" },
     { actual: candidate("et"), expected: "ix" },
     { actual: candidate("faewfawefaewg"), expected: "jeiajeaijeiak" },
     { actual: candidate("hellomyfriend"), expected: "lippsqcjvmirh" },
     { actual: candidate("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"), expected: "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl" },
     { actual: candidate("a"), expected: "e" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
