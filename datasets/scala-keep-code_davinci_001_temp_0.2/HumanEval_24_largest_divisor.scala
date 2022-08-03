import scala.math._
import scala.collection.mutable._
object Problem {
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    def largestDivisor(n : Long) : Long = {
        var i = n - 1
        while (i > 1) {
            if (n % i == 0) {
                return i
            }
            i -= 1
        }
        return 1

    }
    def main(args: Array[String]) = {
    assert(largestDivisor((3l)) == (1l));
    assert(largestDivisor((7l)) == (1l));
    assert(largestDivisor((10l)) == (5l));
    assert(largestDivisor((100l)) == (50l));
    assert(largestDivisor((49l)) == (7l));
    }

}
