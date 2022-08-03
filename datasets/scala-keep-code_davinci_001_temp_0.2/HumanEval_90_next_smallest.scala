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
    def nextSmallest(lst : List[Int]) : Option[Int] = {
        if (lst.isEmpty) {
            None
        } else {
            val sorted = lst.sorted
            if (sorted.length < 2) {
                None
            } else {
                Some(sorted(1))
            }
        }

    }
    def main(args: Array[String]) = {
    assert(nextSmallest((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt))).equals(2));
    assert(nextSmallest((List[Int](5.toInt, 1.toInt, 4.toInt, 3.toInt, 2.toInt))).equals(2));
    assert(nextSmallest((List[Int]())).equals(None));
    assert(nextSmallest((List[Int](1.toInt, 1.toInt))).equals(None));
    assert(nextSmallest((List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt, 0.toInt))).equals(1));
    assert(nextSmallest((List[Int](1.toInt, 1.toInt))).equals(None));
    assert(nextSmallest((List[Int](-35.toInt, 34.toInt, 12.toInt, -45.toInt))).equals(-35));
    }

}
