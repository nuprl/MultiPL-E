import scala.math._
import scala.collection.mutable._
object Problem {
    // The Brazilian factorial is defined as:
    // brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    // where n > 0
    // For example:
    // >>> special_factorial(4)
    // 288
    // The function will receive an integer as input and should return the special
    // factorial of this integer.
    def specialFactorial(n : Int) : Int = {
        var result = 1
        for (i <- 2 to n) {
            result *= i
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(specialFactorial((4)) == (288));
    assert(specialFactorial((5)) == (34560));
    assert(specialFactorial((7)) == (0));
    assert(specialFactorial((1)) == (1));
    }

}
