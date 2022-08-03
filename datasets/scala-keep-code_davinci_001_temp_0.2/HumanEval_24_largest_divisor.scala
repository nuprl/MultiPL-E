import scala.math._
import scala.collection.mutable._
object Problem {
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    def largestDivisor(n : Int) : Int = {
        var i = n
        while (i > 1) {
            if (n % i == 0) {
                return i
            }
            i -= 1
        }
        return 1

    }
    def main(args: Array[String]) = {
    assert(largestDivisor((3)) == (1));
    assert(largestDivisor((7)) == (1));
    assert(largestDivisor((10)) == (5));
    assert(largestDivisor((100)) == (50));
    assert(largestDivisor((49)) == (7));
    }

}
