import scala.math._
import scala.collection.mutable._
object Problem {
    // Return True is list elements are monotonically increasing or decreasing.
    // >>> monotonic([1, 2, 4, 20])
    // True
    // >>> monotonic([1, 20, 4, 10])
    // False
    // >>> monotonic([4, 1, 0, -10])
    // True
    def monotonic(l : List[Int]) : Boolean = {
        var isIncreasing = true
        var isDecreasing = true
        for (i <- 1 until l.length) {
            if (l(i) < l(i-1)) isIncreasing = false
            if (l(i) > l(i-1)) isDecreasing = false
        }
        isIncreasing || isDecreasing

    }
    def main(args: Array[String]) = {
    assert(monotonic((List[Int](1.toInt, 2.toInt, 4.toInt, 10.toInt))) == (true));
    assert(monotonic((List[Int](1.toInt, 2.toInt, 4.toInt, 20.toInt))) == (true));
    assert(monotonic((List[Int](1.toInt, 20.toInt, 4.toInt, 10.toInt))) == (false));
    assert(monotonic((List[Int](4.toInt, 1.toInt, 0.toInt, -10.toInt))) == (true));
    assert(monotonic((List[Int](4.toInt, 1.toInt, 1.toInt, 0.toInt))) == (true));
    assert(monotonic((List[Int](1.toInt, 2.toInt, 3.toInt, 2.toInt, 5.toInt, 60.toInt))) == (false));
    assert(monotonic((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 60.toInt))) == (true));
    assert(monotonic((List[Int](9.toInt, 9.toInt, 9.toInt, 9.toInt))) == (true));
    }

}
