import scala.math._
import scala.collection.mutable._
object Problem {
    // Return list with elements incremented by 1.
    // >>> incr_list([1, 2, 3])
    // [2, 3, 4]
    // >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [6, 4, 6, 3, 4, 4, 10, 1, 124]
    def incrList(l : List[Long]) : List[Long] = {
        l.map(_ + 1)

    }
    def main(args: Array[String]) = {
    assert(incrList((List[Long]())).equals((List[Long]())));
    assert(incrList((List[Long](3l.toLong, 2l.toLong, 1l.toLong))).equals((List[Long](4l.toLong, 3l.toLong, 2l.toLong))));
    assert(incrList((List[Long](5l.toLong, 2l.toLong, 5l.toLong, 2l.toLong, 3l.toLong, 3l.toLong, 9l.toLong, 0l.toLong, 123l.toLong))).equals((List[Long](6l.toLong, 3l.toLong, 6l.toLong, 3l.toLong, 4l.toLong, 4l.toLong, 10l.toLong, 1l.toLong, 124l.toLong))));
    }

}
