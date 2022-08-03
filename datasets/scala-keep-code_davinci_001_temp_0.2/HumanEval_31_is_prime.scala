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
    def isPrime(n : Long) : Boolean = {
        if (n < 2) {
            return false;
        }
        if (n == 2) {
            return true;
        }
        if (n % 2 == 0) {
            return false;
        }
        var i = 3;
        while (i * i <= n) {
            if (n % i == 0) {
                return false;
            }
            i += 2;
        }
        return true;

    }
    def main(args: Array[String]) = {
    assert(isPrime((6l)) == (false));
    assert(isPrime((101l)) == (true));
    assert(isPrime((11l)) == (true));
    assert(isPrime((13441l)) == (true));
    assert(isPrime((61l)) == (true));
    assert(isPrime((4l)) == (false));
    assert(isPrime((1l)) == (false));
    assert(isPrime((5l)) == (true));
    assert(isPrime((11l)) == (true));
    assert(isPrime((17l)) == (true));
    assert(isPrime((85l)) == (false));
    assert(isPrime((77l)) == (false));
    assert(isPrime((255379l)) == (false));
    }

}
