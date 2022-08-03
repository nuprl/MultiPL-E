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
    def solve(N : Int) : String = {
        var sum = 0
        var binary = ""
        var n = N
        while (n > 0) {
            sum += n % 2
            binary = (n % 2).toString + binary
            n /= 2
        }
        binary = sum.toString + binary
        return binary

    }
    def main(args: Array[String]) = {
    assert(solve((1000)).equals(("1")));
    assert(solve((150)).equals(("110")));
    assert(solve((147)).equals(("1100")));
    assert(solve((333)).equals(("1001")));
    assert(solve((963)).equals(("10010")));
    }

}
