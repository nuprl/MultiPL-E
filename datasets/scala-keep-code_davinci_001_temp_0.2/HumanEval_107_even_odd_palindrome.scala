import scala.math._
import scala.collection.mutable._
object Problem {
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
    def evenOddPalindrome(n : Long) : Tuple2[Long, Long] = {
        var even = 0L
        var odd = 0L
        for (i <- 1L to n) {
            if (isPalindrome(i)) {
                if (i % 2 == 0) {
                    even += 1
                } else {
                    odd += 1
                }
            }
        }
        return (even, odd)

    }
    def main(args: Array[String]) = {
    assert(evenOddPalindrome((123l)).equals(((8l, 13l))));
    assert(evenOddPalindrome((12l)).equals(((4l, 6l))));
    assert(evenOddPalindrome((3l)).equals(((1l, 2l))));
    assert(evenOddPalindrome((63l)).equals(((6l, 8l))));
    assert(evenOddPalindrome((25l)).equals(((5l, 6l))));
    assert(evenOddPalindrome((19l)).equals(((4l, 6l))));
    assert(evenOddPalindrome((9l)).equals(((4l, 5l))));
    assert(evenOddPalindrome((1l)).equals(((0l, 1l))));
    }

}
