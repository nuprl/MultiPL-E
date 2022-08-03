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
    def monotonic(l : List[Long]) : Boolean = {
        if (l.length < 2) {
            return true
        }
        val sorted = l.sorted
        val sortedRev = l.sorted.reverse
        if (sorted == l || sortedRev == l) {
            return true
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(monotonic((List[Long](1l.toLong, 2l.toLong, 4l.toLong, 10l.toLong))) == (true));
    assert(monotonic((List[Long](1l.toLong, 2l.toLong, 4l.toLong, 20l.toLong))) == (true));
    assert(monotonic((List[Long](1l.toLong, 20l.toLong, 4l.toLong, 10l.toLong))) == (false));
    assert(monotonic((List[Long](4l.toLong, 1l.toLong, 0l.toLong, -10l.toLong))) == (true));
    assert(monotonic((List[Long](4l.toLong, 1l.toLong, 1l.toLong, 0l.toLong))) == (true));
    assert(monotonic((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 2l.toLong, 5l.toLong, 60l.toLong))) == (false));
    assert(monotonic((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 60l.toLong))) == (true));
    assert(monotonic((List[Long](9l.toLong, 9l.toLong, 9l.toLong, 9l.toLong))) == (true));
    }

}
