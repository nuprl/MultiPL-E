import scala.math._
import scala.collection.mutable._
object Problem {
    // Return list of prime factors of given integer in the order from smallest to largest.
    // Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    // Input number should be equal to the product of all factors
    // >>> factorize(8)
    // [2, 2, 2]
    // >>> factorize(25)
    // [5, 5]
    // >>> factorize(70)
    // [2, 5, 7]
    def factorize(n : Long) : List[Long] = {
        var factors = List[Long]()
        var i = 2L
        while (i <= n) {
            if (n % i == 0) {
                factors = factors :+ i
                n /= i
            } else {
                i += 1
            }
        }
        factors

    }
    def main(args: Array[String]) = {
    assert(factorize((2l)).equals((List[Long](2l.toLong))));
    assert(factorize((4l)).equals((List[Long](2l.toLong, 2l.toLong))));
    assert(factorize((8l)).equals((List[Long](2l.toLong, 2l.toLong, 2l.toLong))));
    assert(factorize((57l)).equals((List[Long](3l.toLong, 19l.toLong))));
    assert(factorize((3249l)).equals((List[Long](3l.toLong, 3l.toLong, 19l.toLong, 19l.toLong))));
    assert(factorize((185193l)).equals((List[Long](3l.toLong, 3l.toLong, 3l.toLong, 19l.toLong, 19l.toLong, 19l.toLong))));
    assert(factorize((20577l)).equals((List[Long](3l.toLong, 19l.toLong, 19l.toLong, 19l.toLong))));
    assert(factorize((18l)).equals((List[Long](2l.toLong, 3l.toLong, 3l.toLong))));
    }

}
