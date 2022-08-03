import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that takes a string and returns True if the string
    // length is a prime number or False otherwise
    // Examples
    // prime_length('Hello') == True
    // prime_length('abcdcba') == True
    // prime_length('kittens') == True
    // prime_length('orange') == False
    def primeLength(string : String) : Boolean = {
        if (string.length < 2) {
            return false
        }
        for (i <- 2 to sqrt(string.length).toInt) {
            if (string.length % i == 0) {
                return false
            }
        }
        return true

    }
    def main(args: Array[String]) = {
    assert(primeLength(("Hello")) == (true));
    assert(primeLength(("abcdcba")) == (true));
    assert(primeLength(("kittens")) == (true));
    assert(primeLength(("orange")) == (false));
    assert(primeLength(("wow")) == (true));
    assert(primeLength(("world")) == (true));
    assert(primeLength(("MadaM")) == (true));
    assert(primeLength(("Wow")) == (true));
    assert(primeLength(("")) == (false));
    assert(primeLength(("HI")) == (true));
    assert(primeLength(("go")) == (true));
    assert(primeLength(("gogo")) == (false));
    assert(primeLength(("aaaaaaaaaaaaaaa")) == (false));
    assert(primeLength(("Madam")) == (true));
    assert(primeLength(("M")) == (false));
    assert(primeLength(("0")) == (false));
    }

}
