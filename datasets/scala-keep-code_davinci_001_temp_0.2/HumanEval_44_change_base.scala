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
    def changeBase(x : Long, base : Long) : String = {
        var result = new StringBuilder()
        var num = x
        while (num > 0) {
            result.append(num % base)
            num /= base
        }
        result.reverse.toString

    }
    def main(args: Array[String]) = {
    assert(changeBase((8l), (3l)).equals(("22")));
    assert(changeBase((9l), (3l)).equals(("100")));
    assert(changeBase((234l), (2l)).equals(("11101010")));
    assert(changeBase((16l), (2l)).equals(("10000")));
    assert(changeBase((8l), (2l)).equals(("1000")));
    assert(changeBase((7l), (2l)).equals(("111")));
    assert(changeBase((2l), (3l)).equals(("2")));
    assert(changeBase((3l), (4l)).equals(("3")));
    assert(changeBase((4l), (5l)).equals(("4")));
    assert(changeBase((5l), (6l)).equals(("5")));
    assert(changeBase((6l), (7l)).equals(("6")));
    assert(changeBase((7l), (8l)).equals(("7")));
    }

}
