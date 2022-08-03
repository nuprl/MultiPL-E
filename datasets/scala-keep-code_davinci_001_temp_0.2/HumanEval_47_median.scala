import scala.math._
import scala.collection.mutable._
object Problem {
    // Return median of elements in the list l.
    // >>> median([3, 1, 2, 4, 5])
    // 3
    // >>> median([-10, 4, 6, 1000, 10, 20])
    // 15.0
    def median(l : List[Long]) : Float = {
        val sorted = l.sorted
        val len = sorted.length
        if (len % 2 == 0) {
            (sorted(len / 2 - 1) + sorted(len / 2)) / 2.0f
        } else {
            sorted(len / 2)
        }

    }
    def main(args: Array[String]) = {
    assert(median((List[Long](3l.toLong, 1l.toLong, 2l.toLong, 4l.toLong, 5l.toLong))) == 3l);
    assert(median((List[Long](-10l.toLong, 4l.toLong, 6l.toLong, 1000l.toLong, 10l.toLong, 20l.toLong))) == (8.0f));
    assert(median((List[Long](5l.toLong))) == 5l);
    assert(median((List[Long](6l.toLong, 5l.toLong))) == (5.5f));
    assert(median((List[Long](8l.toLong, 1l.toLong, 3l.toLong, 9l.toLong, 9l.toLong, 2l.toLong, 7l.toLong))) == 7l);
    }

}
