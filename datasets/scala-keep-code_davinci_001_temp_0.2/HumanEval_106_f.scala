import scala.math._
import scala.collection.mutable._
object Problem {
    // Implement the function f that takes n as a parameter,
    // and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
    // or the sum of numbers from 1 to i otherwise.
    // i starts from 1.
    // the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
    // Example:
    // f(5) == [1, 2, 6, 24, 15]
    def f(n : Int) : List[Int] = {
        // BEGIN SOLUTION
        var result = ListBuffer[Int]()
        for (i <- 1 to n) {
            if (i % 2 == 0) {
                result += factorial(i)
            } else {
                result += (1 to i).sum
            }
        }
        return result.toList
        // END SOLUTION

    }
    def main(args: Array[String]) = {
    assert(f((5)).equals((List[Int](1.toInt, 2.toInt, 6.toInt, 24.toInt, 15.toInt))));
    assert(f((7)).equals((List[Int](1.toInt, 2.toInt, 6.toInt, 24.toInt, 15.toInt, 720.toInt, 28.toInt))));
    assert(f((1)).equals((List[Int](1.toInt))));
    assert(f((3)).equals((List[Int](1.toInt, 2.toInt, 6.toInt))));
    }

}
