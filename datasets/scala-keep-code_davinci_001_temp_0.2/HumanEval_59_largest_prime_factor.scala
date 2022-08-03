import scala.math._
import scala.collection.mutable._
object Problem {
    // Return the largest prime factor of n. Assume n > 1 and is not a prime.
    // >>> largest_prime_factor(13195)
    // 29
    // >>> largest_prime_factor(2048)
    // 2
    def largestPrimeFactor(n : Long) : Long = {
        var i = 2L
        var max = 1L
        while (i <= n) {
            if (n % i == 0) {
                max = i
                n /= i
            } else {
                i += 1
            }
        }
        max

    }
    def main(args: Array[String]) = {
    assert(largestPrimeFactor((15l)) == (5l));
    assert(largestPrimeFactor((27l)) == (3l));
    assert(largestPrimeFactor((63l)) == (7l));
    assert(largestPrimeFactor((330l)) == (11l));
    assert(largestPrimeFactor((13195l)) == (29l));
    }

}
