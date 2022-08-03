import scala.math._
import scala.collection.mutable._
object Problem {
    // Change numerical base of input number x to base.
    // return string representation after the conversion.
    // base numbers are less than 10.
    // >>> change_base(8, 3)
    // '22'
    // >>> change_base(8, 2)
    // '1000'
    // >>> change_base(7, 2)
    // '111'
    def changeBase(x : Int, base : Int) : String = {
        var result = ""
        var n = x
        while (n > 0) {
            result = (n % base).toString + result
            n = n / base
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(changeBase((8), (3)).equals(("22")));
    assert(changeBase((9), (3)).equals(("100")));
    assert(changeBase((234), (2)).equals(("11101010")));
    assert(changeBase((16), (2)).equals(("10000")));
    assert(changeBase((8), (2)).equals(("1000")));
    assert(changeBase((7), (2)).equals(("111")));
    assert(changeBase((2), (3)).equals(("2")));
    assert(changeBase((3), (4)).equals(("3")));
    assert(changeBase((4), (5)).equals(("4")));
    assert(changeBase((5), (6)).equals(("5")));
    assert(changeBase((6), (7)).equals(("6")));
    assert(changeBase((7), (8)).equals(("7")));
    }

}
