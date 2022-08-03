import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function that takes 3 numbers.
    // Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
    // Returns false in any other cases.
    // Examples
    // any_int(5, 2, 7) ➞ True
    // any_int(3, 2, 2) ➞ False
    // any_int(3, -2, 1) ➞ True
    // any_int(3.6, -2.2, 2) ➞ False
    def anyInt(x : Float, y : Float, z : Float) : Boolean = {
        if (x.isValidInt && y.isValidInt && z.isValidInt) {
            if (x == y + z || y == x + z || z == x + y) {
                return true
            }
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(anyInt(2l, 3l, 1l) == (true));
    assert(anyInt((2.5f), 2l, 3l) == (false));
    assert(anyInt((1.5f), 5l, (3.5f)) == (false));
    assert(anyInt(2l, 6l, 2l) == (false));
    assert(anyInt(4l, 2l, 2l) == (true));
    assert(anyInt((2.2f), (2.2f), (2.2f)) == (false));
    assert(anyInt(-4l, 6l, 2l) == (true));
    assert(anyInt(2l, 1l, 1l) == (true));
    assert(anyInt(3l, 4l, 7l) == (true));
    assert(anyInt((3.0f), 4l, 7l) == (false));
    }

}
