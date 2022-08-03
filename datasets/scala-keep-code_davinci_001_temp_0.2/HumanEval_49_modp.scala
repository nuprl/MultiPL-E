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
    def modp(n : Long, p : Long) : Long = {
        if (n == 0) {
            return 1
        }
        var res = 1
        for (i <- n.to(0, -1)) {
            res = (res * 2) % p
        }
        return res

    }
    def main(args: Array[String]) = {
    assert(modp((3l), (5l)) == (3l));
    assert(modp((1101l), (101l)) == (2l));
    assert(modp((0l), (101l)) == (1l));
    assert(modp((3l), (11l)) == (8l));
    assert(modp((100l), (101l)) == (1l));
    assert(modp((30l), (5l)) == (4l));
    assert(modp((31l), (5l)) == (3l));
    }

}
