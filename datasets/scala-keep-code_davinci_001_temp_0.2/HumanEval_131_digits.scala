import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer n, return the product of the odd digits.
    // Return 0 if all digits are even.
    // For example:
    // digits(1)  == 1
    // digits(4)  == 0
    // digits(235) == 15
    def digits(n : Long) : Long = {
        var res = 1L
        var nn = n
        while (nn > 0) {
            val d = nn % 10
            if (d % 2 == 1) res *= d
            nn /= 10
        }
        res

    }
    def main(args: Array[String]) = {
    assert(digits((5l)) == (5l));
    assert(digits((54l)) == (5l));
    assert(digits((120l)) == (1l));
    assert(digits((5014l)) == (5l));
    assert(digits((98765l)) == (315l));
    assert(digits((5576543l)) == (2625l));
    assert(digits((2468l)) == (0l));
    }

}
