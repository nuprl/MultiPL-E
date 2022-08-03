import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer n, return the product of the odd digits.
    // Return 0 if all digits are even.
    // For example:
    // digits(1)  == 1
    // digits(4)  == 0
    // digits(235) == 15
    def digits(n : Int) : Int = {
        var product = 1
        var nn = n
        while (nn > 0) {
            val digit = nn % 10
            if (digit % 2 == 1) {
                product *= digit
            }
            nn /= 10
        }
        product

    }
    def main(args: Array[String]) = {
    assert(digits((5)) == (5));
    assert(digits((54)) == (5));
    assert(digits((120)) == (1));
    assert(digits((5014)) == (5));
    assert(digits((98765)) == (315));
    assert(digits((5576543)) == (2625));
    assert(digits((2468)) == (0));
    }

}
