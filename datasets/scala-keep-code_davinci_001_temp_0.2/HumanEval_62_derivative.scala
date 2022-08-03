import scala.math._
import scala.collection.mutable._
object Problem {
    // xs represent coefficients of a polynomial.
    // xs[0] + xs[1] * x + xs[2] * x^2 + ....
    // Return derivative of this polynomial in the same form.
    // >>> derivative([3, 1, 2, 4, 5])
    // [1, 4, 12, 20]
    // >>> derivative([1, 2, 3])
    // [2, 6]
    def derivative(xs : List[Int]) : List[Int] = {
        var result = List[Int]()
        for (i <- 1 until xs.length) {
            result = result :+ (i * xs(i))
        }
        result

    }
    def main(args: Array[String]) = {
    assert(derivative((List[Int](3.toInt, 1.toInt, 2.toInt, 4.toInt, 5.toInt))).equals((List[Int](1.toInt, 4.toInt, 12.toInt, 20.toInt))));
    assert(derivative((List[Int](1.toInt, 2.toInt, 3.toInt))).equals((List[Int](2.toInt, 6.toInt))));
    assert(derivative((List[Int](3.toInt, 2.toInt, 1.toInt))).equals((List[Int](2.toInt, 2.toInt))));
    assert(derivative((List[Int](3.toInt, 2.toInt, 1.toInt, 0.toInt, 4.toInt))).equals((List[Int](2.toInt, 2.toInt, 0.toInt, 16.toInt))));
    assert(derivative((List[Int](1.toInt))).equals((List[Int]())));
    }

}
