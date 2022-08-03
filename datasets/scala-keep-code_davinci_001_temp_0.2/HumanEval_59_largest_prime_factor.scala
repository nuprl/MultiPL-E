import scala.math._
import scala.collection.mutable._
object Problem {
    // Return the largest prime factor of n. Assume n > 1 and is not a prime.
    // >>> largest_prime_factor(13195)
    // 29
    // >>> largest_prime_factor(2048)
    // 2
    def largestPrimeFactor(n : Int) : Int = {
        var i = 2
        var max = 0
        while (i <= sqrt(n)) {
            if (n % i == 0) {
                max = i
                n = n / i
            } else {
                i = i + 1
            }
        }
        max

    }
    def main(args: Array[String]) = {
    assert(largestPrimeFactor((15)) == (5));
    assert(largestPrimeFactor((27)) == (3));
    assert(largestPrimeFactor((63)) == (7));
    assert(largestPrimeFactor((330)) == (11));
    assert(largestPrimeFactor((13195)) == (29));
    }

}
