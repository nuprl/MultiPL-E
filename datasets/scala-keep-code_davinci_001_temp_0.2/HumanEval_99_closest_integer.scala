import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function that takes a value (string) representing a number
    // and returns the closest integer to it. If the number is equidistant
    // from two integers, round it away from zero.
    // Examples
    // >>> closest_integer("10")
    // 10
    // >>> closest_integer("15.3")
    // 15
    // Note:
    // Rounding away from zero means that if the given number is equidistant
    // from two integers, the one you should return is the one that is the
    // farthest from zero. For example closest_integer("14.5") should
    // return 15 and closest_integer("-14.5") should return -15.
    def closestInteger(value : String) : Int = {
        val num = value.toDouble
        val int = num.toInt
        val diff = abs(num - int)
        if (diff == 0) {
            int
        } else {
            if (diff > 0.5) {
                int + 1
            } else {
                int
            }
        }

    }
    def main(args: Array[String]) = {
    assert(closestInteger(("10")) == (10));
    assert(closestInteger(("14.5")) == (15));
    assert(closestInteger(("-15.5")) == (-16));
    assert(closestInteger(("15.3")) == (15));
    assert(closestInteger(("0")) == (0));
    }

}
