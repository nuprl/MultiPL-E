import scala.math._
import scala.collection.mutable._
object Problem {
    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    def greatestCommonDivisor(a : Long, b : Long) : Long = {
        if (b == 0) return a
        return greatestCommonDivisor(b, a % b)

    }
    def main(args: Array[String]) = {
    assert(greatestCommonDivisor((3l), (7l)) == (1l));
    assert(greatestCommonDivisor((10l), (15l)) == (5l));
    assert(greatestCommonDivisor((49l), (14l)) == (7l));
    assert(greatestCommonDivisor((144l), (60l)) == (12l));
    }

}
