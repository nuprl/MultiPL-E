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
    def f(n : Long) : List[Long] = {
        var result = ListBuffer[Long]()
        for (i <- 1 to n.toInt) {
            if (i % 2 == 0) {
                result += factorial(i)
            } else {
                result += (1 to i).sum
            }
        }
        result.toList

    }
    def main(args: Array[String]) = {
    assert(f((5l)).equals((List[Long](1l.toLong, 2l.toLong, 6l.toLong, 24l.toLong, 15l.toLong))));
    assert(f((7l)).equals((List[Long](1l.toLong, 2l.toLong, 6l.toLong, 24l.toLong, 15l.toLong, 720l.toLong, 28l.toLong))));
    assert(f((1l)).equals((List[Long](1l.toLong))));
    assert(f((3l)).equals((List[Long](1l.toLong, 2l.toLong, 6l.toLong))));
    }

}
