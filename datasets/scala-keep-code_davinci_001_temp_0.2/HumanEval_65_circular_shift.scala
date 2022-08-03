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
    def circularShift(x : Int, shift : Int) : String = {
        val digits = x.toString.toList
        val n = digits.length
        val shift = shift % n
        val result = digits.drop(n - shift) ++ digits.take(n - shift)
        result.mkString

    }
    def main(args: Array[String]) = {
    assert(circularShift((100), (2)).equals(("001")));
    assert(circularShift((12), (2)).equals(("12")));
    assert(circularShift((97), (8)).equals(("79")));
    assert(circularShift((12), (1)).equals(("21")));
    assert(circularShift((11), (101)).equals(("11")));
    }

}
