import scala.math._
import scala.collection.mutable._
object Problem {
    // Circular shift the digits of the integer x, shift the digits right by shift
    // and return the result as a string.
    // If shift > number of digits, return digits reversed.
    // >>> circular_shift(12, 1)
    // "21"
    // >>> circular_shift(12, 2)
    // "12"
    def circularShift(x : Long, shift : Long) : String = {
        val digits = x.toString.toList
        val n = digits.length
        val shift_digits = digits.drop(shift.toInt) ++ digits.take(shift.toInt)
        shift_digits.mkString("")

    }
    def main(args: Array[String]) = {
    assert(circularShift((100l), (2l)).equals(("001")));
    assert(circularShift((12l), (2l)).equals(("12")));
    assert(circularShift((97l), (8l)).equals(("79")));
    assert(circularShift((12l), (1l)).equals(("21")));
    assert(circularShift((11l), (101l)).equals(("11")));
    }

}
