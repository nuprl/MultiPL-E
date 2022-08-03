import scala.math._
import scala.collection.mutable._
object Problem {
    // pairs_sum_to_zero takes a list of integers as an input.
    // it returns True if there are two distinct elements in the list that
    // sum to zero, and False otherwise.
    // >>> pairs_sum_to_zero([1, 3, 5, 0])
    // False
    // >>> pairs_sum_to_zero([1, 3, -2, 1])
    // False
    // >>> pairs_sum_to_zero([1, 2, 3, 7])
    // False
    // >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
    // True
    // >>> pairs_sum_to_zero([1])
    // False
    def pairsSumToZero(l : List[Long]) : Boolean = {
        val set = l.toSet
        for (i <- set) {
            if (i != 0 && set.contains(-i)) {
                return true
            }
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(pairsSumToZero((List[Long](1l.toLong, 3l.toLong, 5l.toLong, 0l.toLong))) == (false));
    assert(pairsSumToZero((List[Long](1l.toLong, 3l.toLong, -2l.toLong, 1l.toLong))) == (false));
    assert(pairsSumToZero((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 7l.toLong))) == (false));
    assert(pairsSumToZero((List[Long](2l.toLong, 4l.toLong, -5l.toLong, 3l.toLong, 5l.toLong, 7l.toLong))) == (true));
    assert(pairsSumToZero((List[Long](1l.toLong))) == (false));
    assert(pairsSumToZero((List[Long](-3l.toLong, 9l.toLong, -1l.toLong, 3l.toLong, 2l.toLong, 30l.toLong))) == (true));
    assert(pairsSumToZero((List[Long](-3l.toLong, 9l.toLong, -1l.toLong, 3l.toLong, 2l.toLong, 31l.toLong))) == (true));
    assert(pairsSumToZero((List[Long](-3l.toLong, 9l.toLong, -1l.toLong, 4l.toLong, 2l.toLong, 30l.toLong))) == (false));
    assert(pairsSumToZero((List[Long](-3l.toLong, 9l.toLong, -1l.toLong, 4l.toLong, 2l.toLong, 31l.toLong))) == (false));
    }

}
