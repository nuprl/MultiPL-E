import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a list of numbers, return whether or not they are sorted
    // in ascending order. If list has more than 1 duplicate of the same
    // number, return False. Assume no negative numbers and only integers.
    // Examples
    // is_sorted([5]) ➞ True
    // is_sorted([1, 2, 3, 4, 5]) ➞ True
    // is_sorted([1, 3, 2, 4, 5]) ➞ False
    // is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
    // is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
    // is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
    // is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
    // is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
    def isSorted(lst : List[Int]) : Boolean = {
        if (lst.length == 1) {
            return true
        }
        val sorted = lst.sorted
        if (lst.length == sorted.length) {
            for (i <- 0 until lst.length) {
                if (lst(i) != sorted(i)) {
                    return false
                }
            }
            return true
        }
        false

    }
    def main(args: Array[String]) = {
    assert(isSorted((List[Int](5.toInt))) == (true));
    assert(isSorted((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt))) == (true));
    assert(isSorted((List[Int](1.toInt, 3.toInt, 2.toInt, 4.toInt, 5.toInt))) == (false));
    assert(isSorted((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt))) == (true));
    assert(isSorted((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt, 7.toInt))) == (true));
    assert(isSorted((List[Int](1.toInt, 3.toInt, 2.toInt, 4.toInt, 5.toInt, 6.toInt, 7.toInt))) == (false));
    assert(isSorted((List[Int]())) == (true));
    assert(isSorted((List[Int](1.toInt))) == (true));
    assert(isSorted((List[Int](3.toInt, 2.toInt, 1.toInt))) == (false));
    assert(isSorted((List[Int](1.toInt, 2.toInt, 2.toInt, 2.toInt, 3.toInt, 4.toInt))) == (false));
    assert(isSorted((List[Int](1.toInt, 2.toInt, 3.toInt, 3.toInt, 3.toInt, 4.toInt))) == (false));
    assert(isSorted((List[Int](1.toInt, 2.toInt, 2.toInt, 3.toInt, 3.toInt, 4.toInt))) == (true));
    assert(isSorted((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))) == (true));
    }

}
