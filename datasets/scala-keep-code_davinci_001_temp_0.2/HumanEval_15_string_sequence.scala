import scala.math._
import scala.collection.mutable._
object Problem {
    // Return a string containing space-delimited numbers starting from 0 upto n inclusive.
    // >>> string_sequence(0)
    // '0'
    // >>> string_sequence(5)
    // '0 1 2 3 4 5'
    def stringSequence(n : Int) : String = {
        var result = ""
        for (i <- 0 to n) {
            result += i + " "
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(stringSequence((0)).equals(("0")));
    assert(stringSequence((3)).equals(("0 1 2 3")));
    assert(stringSequence((10)).equals(("0 1 2 3 4 5 6 7 8 9 10")));
    }

}
