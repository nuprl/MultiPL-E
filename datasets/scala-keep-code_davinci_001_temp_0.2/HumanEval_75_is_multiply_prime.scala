import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that returns true if the given number is the multiplication of 3 prime numbers
    // and false otherwise.
    // Knowing that (a) is less then 100. 
    // Example:
    // is_multiply_prime(30) == True
    // 30 = 2 * 3 * 5
    def isMultiplyPrime(a : Int) : Boolean = {
        val primes = List(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
        val factors = primes.filter(a % _ == 0)
        if (factors.length == 3) {
            true
        } else {
            false
        }

    }
    def main(args: Array[String]) = {
    assert(isMultiplyPrime((5)) == (false));
    assert(isMultiplyPrime((30)) == (true));
    assert(isMultiplyPrime((8)) == (true));
    assert(isMultiplyPrime((10)) == (false));
    assert(isMultiplyPrime((125)) == (true));
    assert(isMultiplyPrime((105)) == (true));
    assert(isMultiplyPrime((126)) == (false));
    assert(isMultiplyPrime((729)) == (false));
    assert(isMultiplyPrime((891)) == (false));
    assert(isMultiplyPrime((1001)) == (true));
    }

}
