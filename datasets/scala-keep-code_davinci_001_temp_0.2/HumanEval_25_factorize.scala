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
    def factorize(n : Int) : List[Int] = {
        var factors = List[Int]()
        var i = 2
        while (i <= n) {
            if (n % i == 0) {
                factors = factors :+ i
                n = n / i
            } else {
                i = i + 1
            }
        }
        return factors

    }
    def main(args: Array[String]) = {
    assert(factorize((2)).equals((List[Int](2.toInt))));
    assert(factorize((4)).equals((List[Int](2.toInt, 2.toInt))));
    assert(factorize((8)).equals((List[Int](2.toInt, 2.toInt, 2.toInt))));
    assert(factorize((57)).equals((List[Int](3.toInt, 19.toInt))));
    assert(factorize((3249)).equals((List[Int](3.toInt, 3.toInt, 19.toInt, 19.toInt))));
    assert(factorize((185193)).equals((List[Int](3.toInt, 3.toInt, 3.toInt, 19.toInt, 19.toInt, 19.toInt))));
    assert(factorize((20577)).equals((List[Int](3.toInt, 19.toInt, 19.toInt, 19.toInt))));
    assert(factorize((18)).equals((List[Int](2.toInt, 3.toInt, 3.toInt))));
    }

}
