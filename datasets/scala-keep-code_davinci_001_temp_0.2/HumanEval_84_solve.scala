import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer N, return the total sum of its digits in binary.
    // Example
    // For N = 1000, the sum of digits will be 1 the output should be "1".
    // For N = 150, the sum of digits will be 6 the output should be "110".
    // For N = 147, the sum of digits will be 12 the output should be "1100".
    // Variables:
    // @N integer
    // Constraints: 0 ≤ N ≤ 10000.
    // Output:
    // a string of binary number
    def solve(N : Long) : String = {
        var sum = 0
        var n = N
        while (n > 0) {
            sum += n % 2
            n /= 2
        }
        return sum.toString

    }
    def main(args: Array[String]) = {
    assert(solve((1000l)).equals(("1")));
    assert(solve((150l)).equals(("110")));
    assert(solve((147l)).equals(("1100")));
    assert(solve((333l)).equals(("1001")));
    assert(solve((963l)).equals(("10010")));
    }

}
