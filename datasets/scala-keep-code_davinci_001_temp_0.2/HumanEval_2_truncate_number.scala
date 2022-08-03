import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the decimal part of the number.
    // >>> truncate_number(3.5)
    // 0.5
    def truncateNumber(number : Float) : Float = {
        val intPart = floor(number).toInt
        val decPart = number - intPart
        decPart

    }
    def main(args: Array[String]) = {
    assert(truncateNumber((3.5f)) == (0.5f));
    assert(truncateNumber((1.25f)) == (0.25f));
    assert(truncateNumber((123.0f)) == (0.0f));
    }

}
