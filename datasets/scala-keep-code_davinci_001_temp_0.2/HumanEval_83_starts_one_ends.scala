import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    def startsOneEnds(n : Long) : Long = {
        var count = 0L
        for (i <- 1L to n) {
            if (i % 10 == 1) {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(startsOneEnds((1l)) == (1l));
    assert(startsOneEnds((2l)) == (18l));
    assert(startsOneEnds((3l)) == (180l));
    assert(startsOneEnds((4l)) == (1800l));
    assert(startsOneEnds((5l)) == (18000l));
    }

}
