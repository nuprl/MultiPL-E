import scala.math._
import scala.collection.mutable._
object Problem {
    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [0, 2, 3, 5, 9, 123]
    def unique(l : List[Long]) : List[Long] = {
        var ret = List[Long]()
        for (i <- l) {
            if (!ret.contains(i)) {
                ret = i :: ret
            }
        }
        ret.sortWith(_ < _)

    }
    def main(args: Array[String]) = {
    assert(unique((List[Long](5l.toLong, 3l.toLong, 5l.toLong, 2l.toLong, 3l.toLong, 3l.toLong, 9l.toLong, 0l.toLong, 123l.toLong))).equals((List[Long](0l.toLong, 2l.toLong, 3l.toLong, 5l.toLong, 9l.toLong, 123l.toLong))));
    }

}
