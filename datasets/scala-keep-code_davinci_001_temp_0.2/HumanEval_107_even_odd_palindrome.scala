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
    def evenOddPalindrome(n : Int) : Tuple2[Int, Int] = {
        var even = 0
        var odd = 0
        for (i <- 1 to n) {
            val str = i.toString
            val len = str.length
            var isEven = true
            for (j <- 0 until len / 2) {
                if (str(j) != str(len - 1 - j)) {
                    isEven = false
                    break
                }
            }
            if (isEven) {
                even += 1
            } else {
                odd += 1
            }
        }
        return (even, odd)

    }
    def main(args: Array[String]) = {
    assert(evenOddPalindrome((123)).equals(((8, 13))));
    assert(evenOddPalindrome((12)).equals(((4, 6))));
    assert(evenOddPalindrome((3)).equals(((1, 2))));
    assert(evenOddPalindrome((63)).equals(((6, 8))));
    assert(evenOddPalindrome((25)).equals(((5, 6))));
    assert(evenOddPalindrome((19)).equals(((4, 6))));
    assert(evenOddPalindrome((9)).equals(((4, 5))));
    assert(evenOddPalindrome((1)).equals(((0, 1))));
    }

}
