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
    def specialFactorial(n : Long) : Long = {
        var result = 1L
        for (i <- 1L to n) {
            result *= i
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(specialFactorial((4l)) == (288l));
    assert(specialFactorial((5l)) == (34560l));
    assert(specialFactorial((7l)) == (125411328000l));
    assert(specialFactorial((1l)) == (1l));
    }

}
