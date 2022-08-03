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
    def isSorted(lst : List[Long]) : Boolean = {
        if (lst.length <= 1) {
            return true
        }
        var i = 0
        var j = 1
        while (i < lst.length && j < lst.length) {
            if (lst(i) > lst(j)) {
                return false
            }
            i += 1
            j += 1
        }
        return true

    }
    def main(args: Array[String]) = {
    assert(isSorted((List[Long](5l.toLong))) == (true));
    assert(isSorted((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong))) == (true));
    assert(isSorted((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 4l.toLong, 5l.toLong))) == (false));
    assert(isSorted((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong))) == (true));
    assert(isSorted((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong, 7l.toLong))) == (true));
    assert(isSorted((List[Long](1l.toLong, 3l.toLong, 2l.toLong, 4l.toLong, 5l.toLong, 6l.toLong, 7l.toLong))) == (false));
    assert(isSorted((List[Long]())) == (true));
    assert(isSorted((List[Long](1l.toLong))) == (true));
    assert(isSorted((List[Long](3l.toLong, 2l.toLong, 1l.toLong))) == (false));
    assert(isSorted((List[Long](1l.toLong, 2l.toLong, 2l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))) == (false));
    assert(isSorted((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 3l.toLong, 3l.toLong, 4l.toLong))) == (false));
    assert(isSorted((List[Long](1l.toLong, 2l.toLong, 2l.toLong, 3l.toLong, 3l.toLong, 4l.toLong))) == (true));
    assert(isSorted((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))) == (true));
    }

}
