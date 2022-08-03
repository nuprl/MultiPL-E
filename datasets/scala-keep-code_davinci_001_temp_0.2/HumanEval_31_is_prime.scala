import scala.math._
import scala.collection.mutable._
object Problem {
    // Return true if a given number is prime, and false otherwise.
    // >>> is_prime(6)
    // False
    // >>> is_prime(101)
    // True
    // >>> is_prime(11)
    // True
    // >>> is_prime(13441)
    // True
    // >>> is_prime(61)
    // True
    // >>> is_prime(4)
    // False
    // >>> is_prime(1)
    // False
    def isPrime(n : Int) : Boolean = {
        if (n <= 1) {
            return false;
        }
        for (i <- 2 to sqrt(n).toInt) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;

    }
    def main(args: Array[String]) = {
    assert(isPrime((6)) == (false));
    assert(isPrime((101)) == (true));
    assert(isPrime((11)) == (true));
    assert(isPrime((13441)) == (true));
    assert(isPrime((61)) == (true));
    assert(isPrime((4)) == (false));
    assert(isPrime((1)) == (false));
    assert(isPrime((5)) == (true));
    assert(isPrime((11)) == (true));
    assert(isPrime((17)) == (true));
    assert(isPrime((85)) == (false));
    assert(isPrime((77)) == (false));
    assert(isPrime((255379)) == (false));
    }

}
