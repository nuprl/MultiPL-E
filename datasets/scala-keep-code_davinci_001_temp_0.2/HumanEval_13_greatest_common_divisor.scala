import scala.math._
import scala.collection.mutable._
object Problem {
    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    def greatestCommonDivisor(a : Int, b : Int) : Int = {
        if (b == 0) {
            return a
        }
        return greatestCommonDivisor(b, a % b)

    }
    def main(args: Array[String]) = {
    assert(greatestCommonDivisor((3), (7)) == (1));
    assert(greatestCommonDivisor((10), (15)) == (5));
    assert(greatestCommonDivisor((49), (14)) == (7));
    assert(greatestCommonDivisor((144), (60)) == (12));
    }

}
