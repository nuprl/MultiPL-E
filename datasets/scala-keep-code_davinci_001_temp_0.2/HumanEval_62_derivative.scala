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
    def derivative(xs : List[Long]) : List[Long] = {
        val n = xs.length
        val ds = new Array[Long](n - 1)
        for (i <- 1 until n) {
            ds(i - 1) = xs(i) * i
        }
        ds.toList

    }
    def main(args: Array[String]) = {
    assert(derivative((List[Long](3l.toLong, 1l.toLong, 2l.toLong, 4l.toLong, 5l.toLong))).equals((List[Long](1l.toLong, 4l.toLong, 12l.toLong, 20l.toLong))));
    assert(derivative((List[Long](1l.toLong, 2l.toLong, 3l.toLong))).equals((List[Long](2l.toLong, 6l.toLong))));
    assert(derivative((List[Long](3l.toLong, 2l.toLong, 1l.toLong))).equals((List[Long](2l.toLong, 2l.toLong))));
    assert(derivative((List[Long](3l.toLong, 2l.toLong, 1l.toLong, 0l.toLong, 4l.toLong))).equals((List[Long](2l.toLong, 2l.toLong, 0l.toLong, 16l.toLong))));
    assert(derivative((List[Long](1l.toLong))).equals((List[Long]())));
    }

}
