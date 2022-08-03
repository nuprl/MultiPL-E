import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a list of integers.
    // Write a function next_smallest() that returns the 2nd smallest element of the list.
    // Return None if there is no such element.
    // next_smallest([1, 2, 3, 4, 5]) == 2
    // next_smallest([5, 1, 4, 3, 2]) == 2
    // next_smallest([]) == None
    // next_smallest([1, 1]) == None
    def nextSmallest(lst : List[Long]) : Option[Long] = {
        val sorted = lst.sorted
        if (sorted.length < 2) {
            None
        } else {
            Some(sorted(1))
        }

    }
    def main(args: Array[String]) = {
    assert(nextSmallest((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong))).equals(2l));
    assert(nextSmallest((List[Long](5l.toLong, 1l.toLong, 4l.toLong, 3l.toLong, 2l.toLong))).equals(2l));
    assert(nextSmallest((List[Long]())).equals(None));
    assert(nextSmallest((List[Long](1l.toLong, 1l.toLong))).equals(None));
    assert(nextSmallest((List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong, 0l.toLong))).equals(1l));
    assert(nextSmallest((List[Long](1l.toLong, 1l.toLong))).equals(None));
    assert(nextSmallest((List[Long](-35l.toLong, 34l.toLong, 12l.toLong, -45l.toLong))).equals(-35l));
    }

}
