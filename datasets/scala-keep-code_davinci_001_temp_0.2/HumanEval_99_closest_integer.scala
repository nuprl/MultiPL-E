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
    def closestInteger(value : String) : Long = {
        val num = value.toDouble
        val numInt = num.toLong
        if (num - numInt >= 0.5) {
            numInt + 1
        } else {
            numInt
        }

    }
    def main(args: Array[String]) = {
    assert(closestInteger(("10")) == (10l));
    assert(closestInteger(("14.5")) == (15l));
    assert(closestInteger(("-15.5")) == (-16l));
    assert(closestInteger(("15.3")) == (15l));
    assert(closestInteger(("0")) == (0l));
    }

}
