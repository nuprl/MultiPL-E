import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    def startsOneEnds(n : Int) : Int = {
        var count = 0
        for (i <- 1 to n) {
            for (j <- 1 to n) {
                if (i == 1 || j == 1 || i == n || j == n) {
                    count += 1
                }
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(startsOneEnds((1)) == (1));
    assert(startsOneEnds((2)) == (18));
    assert(startsOneEnds((3)) == (180));
    assert(startsOneEnds((4)) == (1800));
    assert(startsOneEnds((5)) == (18000));
    }

}
