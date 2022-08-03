import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function that returns a tuple (a, b), where 'a' is
    // the largest of negative integers, and 'b' is the smallest
    // of positive integers in a list.
    // If there is no negative or positive integers, return them as None.
    // Examples:
    // largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
    // largest_smallest_integers([]) == (None, None)
    // largest_smallest_integers([0]) == (None, None)
    def largestSmallestIntegers(lst : List[Long]) : Tuple2[Option[Long], Option[Long]] = {
        if (lst.isEmpty) {
            (None, None)
        } else {
            val neg = lst.filter(x => x < 0)
            val pos = lst.filter(x => x > 0)
            if (neg.isEmpty) {
                (None, Some(pos.min))
            } else if (pos.isEmpty) {
                (Some(neg.max), None)
            } else {
                (Some(neg.max), Some(pos.min))
            }
        }

    }
    def main(args: Array[String]) = {
    assert(largestSmallestIntegers((List[Long](2l.toLong, 4l.toLong, 1l.toLong, 3l.toLong, 5l.toLong, 7l.toLong))).equals((Some(None), Some(1l))));
    assert(largestSmallestIntegers((List[Long](2l.toLong, 4l.toLong, 1l.toLong, 3l.toLong, 5l.toLong, 7l.toLong, 0l.toLong))).equals((Some(None), Some(1l))));
    assert(largestSmallestIntegers((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 4l.toLong, 5l.toLong, 6l.toLong, -2l.toLong))).equals((-2l, 1l)));
    assert(largestSmallestIntegers((List[Long](4l.toLong, 5l.toLong, 3l.toLong, 6l.toLong, 2l.toLong, 7l.toLong, -7l.toLong))).equals((-7l, 2l)));
    assert(largestSmallestIntegers((List[Long](7l.toLong, 3l.toLong, 8l.toLong, 4l.toLong, 9l.toLong, 2l.toLong, 5l.toLong, -9l.toLong))).equals((-9l, 2l)));
    assert(largestSmallestIntegers((List[Long]())).equals((Some(None), Some(None))));
    assert(largestSmallestIntegers((List[Long](0l.toLong))).equals((Some(None), Some(None))));
    assert(largestSmallestIntegers((List[Long](-1l.toLong, -3l.toLong, -5l.toLong, -6l.toLong))).equals((Some(-1l), Some(None))));
    assert(largestSmallestIntegers((List[Long](-1l.toLong, -3l.toLong, -5l.toLong, -6l.toLong, 0l.toLong))).equals((Some(-1l), Some(None))));
    assert(largestSmallestIntegers((List[Long](-6l.toLong, -4l.toLong, -4l.toLong, -3l.toLong, 1l.toLong))).equals((-3l, 1l)));
    assert(largestSmallestIntegers((List[Long](-6l.toLong, -4l.toLong, -4l.toLong, -3l.toLong, -100l.toLong, 1l.toLong))).equals((-3l, 1l)));
    }

}
