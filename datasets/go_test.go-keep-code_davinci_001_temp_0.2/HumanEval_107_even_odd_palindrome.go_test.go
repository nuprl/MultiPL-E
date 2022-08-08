package even_odd_palindrome_test

import (
    "testing"
    "fmt"
)

// Given a positive integer n, return a tuple that has the number of even and odd
// integer palindromes that fall within the range(1, n), inclusive.
// Example 1:
// Input: 3
// Output: (1, 2)
// Explanation:
// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
// Example 2:
// Input: 12
// Output: (4, 6)
// Explanation:
// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
// Note:
// 1. 1 <= n <= 10^3
// 2. returned tuple has the number of even and odd integer palindromes respectively.
func even_odd_palindrome(n int) []interface{} {
    even := 0
    odd := 0
    for i := 1; i <= n; i++ {
        if isPalindrome(i) {
            if isEven(i) {
                even++
            } else {
                odd++
            }
        }
    }
    return []interface{}{even, odd}
}


func TestEven_Odd_Palindrome(t *testing.T) {
  candidate := even_odd_palindrome
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(123), expected: []interface{}{8, 13} },
     { actual: candidate(12), expected: []interface{}{4, 6} },
     { actual: candidate(3), expected: []interface{}{1, 2} },
     { actual: candidate(63), expected: []interface{}{6, 8} },
     { actual: candidate(25), expected: []interface{}{5, 6} },
     { actual: candidate(19), expected: []interface{}{4, 6} },
     { actual: candidate(9), expected: []interface{}{4, 5} },
     { actual: candidate(1), expected: []interface{}{0, 1} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
