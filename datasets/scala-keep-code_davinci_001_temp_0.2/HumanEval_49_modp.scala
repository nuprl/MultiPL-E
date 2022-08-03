import scala.math._
import scala.collection.mutable._
object Problem {
    // Return 2^n modulo p (be aware of numerics).
    // >>> modp(3, 5)
    // 3
    // >>> modp(1101, 101)
    // 2
    // >>> modp(0, 101)
    // 1
    // >>> modp(3, 11)
    // 8
    // >>> modp(100, 101)
    // 1
    def modp(n : Int, p : Int) : Int = {
        var result = 1
        for (i <- 0 until n) {
            result = (result * 2) % p
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(modp((3), (5)) == (3));
    assert(modp((1101), (101)) == (2));
    assert(modp((0), (101)) == (1));
    assert(modp((3), (11)) == (8));
    assert(modp((100), (101)) == (1));
    assert(modp((30), (5)) == (4));
    assert(modp((31), (5)) == (3));
    }

}
