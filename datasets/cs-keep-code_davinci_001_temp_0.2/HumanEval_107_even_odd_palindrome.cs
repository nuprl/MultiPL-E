using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
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
    public static Tuple<int, int> EvenOddPalindrome(int n) {
        int even = 0, odd = 0;
        for (int i = 1; i <= n; i++) {
            if (IsPalindrome(i)) {
                if (i % 2 == 0) {
                    even++;
                } else {
                    odd++;
                }
            }
        }
        return new Tuple<int, int>(even, odd);

    }
    public static void Main(string[] args) {
    Debug.Assert(EvenOddPalindrome((123)).Equals((Tuple.Create(8, 13))));
    Debug.Assert(EvenOddPalindrome((12)).Equals((Tuple.Create(4, 6))));
    Debug.Assert(EvenOddPalindrome((3)).Equals((Tuple.Create(1, 2))));
    Debug.Assert(EvenOddPalindrome((63)).Equals((Tuple.Create(6, 8))));
    Debug.Assert(EvenOddPalindrome((25)).Equals((Tuple.Create(5, 6))));
    Debug.Assert(EvenOddPalindrome((19)).Equals((Tuple.Create(4, 6))));
    Debug.Assert(EvenOddPalindrome((9)).Equals((Tuple.Create(4, 5))));
    Debug.Assert(EvenOddPalindrome((1)).Equals((Tuple.Create(0, 1))));
    }

}
