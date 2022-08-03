import scala.math._
import scala.collection.mutable._
object Problem {
    // Return only positive numbers in the list.
    // >>> get_positive([-1, 2, -4, 5, 6])
    // [2, 5, 6]
    // >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // [5, 3, 2, 3, 9, 123, 1]
    def getPositive(l : List[Long]) : List[Long] = {
        l.filter(_ > 0)

    }
    def main(args: Array[String]) = {
    assert(getPositive((List[Long](-1l.toLong, -2l.toLong, 4l.toLong, 5l.toLong, 6l.toLong))).equals((List[Long](4l.toLong, 5l.toLong, 6l.toLong))));
    assert(getPositive((List[Long](5l.toLong, 3l.toLong, -5l.toLong, 2l.toLong, 3l.toLong, 3l.toLong, 9l.toLong, 0l.toLong, 123l.toLong, 1l.toLong, -10l.toLong))).equals((List[Long](5l.toLong, 3l.toLong, 2l.toLong, 3l.toLong, 3l.toLong, 9l.toLong, 123l.toLong, 1l.toLong))));
    assert(getPositive((List[Long](-1l.toLong, -2l.toLong))).equals((List[Long]())));
    assert(getPositive((List[Long]())).equals((List[Long]())));
    }

}
