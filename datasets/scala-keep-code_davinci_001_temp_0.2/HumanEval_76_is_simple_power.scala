import scala.math._
import scala.collection.mutable._
object Problem {
    // Your task is to write a function that returns true if a number x is a simple
    // power of n and false in other cases.
    // x is a simple power of n if n**int=x
    // For example:
    // is_simple_power(1, 4) => true
    // is_simple_power(2, 2) => true
    // is_simple_power(8, 2) => true
    // is_simple_power(3, 2) => false
    // is_simple_power(3, 1) => false
    // is_simple_power(5, 3) => false
    def isSimplePower(x : Long, n : Long) : Boolean = {
        if (x == 1) {
            return true
        }
        if (x == n) {
            return true
        }
        if (x % n != 0) {
            return false
        }
        return isSimplePower(x / n, n)

    }
    def main(args: Array[String]) = {
    assert(isSimplePower((16l), (2l)) == (true));
    assert(isSimplePower((143214l), (16l)) == (false));
    assert(isSimplePower((4l), (2l)) == (true));
    assert(isSimplePower((9l), (3l)) == (true));
    assert(isSimplePower((16l), (4l)) == (true));
    assert(isSimplePower((24l), (2l)) == (false));
    assert(isSimplePower((128l), (4l)) == (false));
    assert(isSimplePower((12l), (6l)) == (false));
    assert(isSimplePower((1l), (1l)) == (true));
    assert(isSimplePower((1l), (12l)) == (true));
    }

}
