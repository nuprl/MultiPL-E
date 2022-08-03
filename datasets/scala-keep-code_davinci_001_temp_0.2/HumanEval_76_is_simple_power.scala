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
    def isSimplePower(x : Int, n : Int) : Boolean = {
        if (x == n) {
            return true
        }
        if (n == 1) {
            return false
        }
        if (x % n == 0) {
            return isSimplePower(x / n, n)
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(isSimplePower((16), (2)) == (true));
    assert(isSimplePower((143214), (16)) == (false));
    assert(isSimplePower((4), (2)) == (true));
    assert(isSimplePower((9), (3)) == (true));
    assert(isSimplePower((16), (4)) == (true));
    assert(isSimplePower((24), (2)) == (false));
    assert(isSimplePower((128), (4)) == (false));
    assert(isSimplePower((12), (6)) == (false));
    assert(isSimplePower((1), (1)) == (true));
    assert(isSimplePower((1), (12)) == (true));
    }

}
