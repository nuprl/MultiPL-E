import scala.math._
import scala.collection.mutable._
object Problem {
    // From a given list of integers, generate a list of rolling maximum element found until given moment
    // in the sequence.
    // >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
    // [1, 2, 3, 3, 3, 4, 4]
    def rollingMax(numbers : List[Long]) : List[Long] = {
        var rollingMax = List[Long]()
        var max = 0L
        for (i <- numbers) {
            if (i > max) {
                rollingMax = rollingMax :+ i
                max = i
            } else {
                rollingMax = rollingMax :+ max
            }
        }
        return rollingMax

    }
    def main(args: Array[String]) = {
    assert(rollingMax((List[Long]())).equals((List[Long]())));
    assert(rollingMax((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))));
    assert(rollingMax((List[Long](4l.toLong, 3l.toLong, 2l.toLong, 1l.toLong))).equals((List[Long](4l.toLong, 4l.toLong, 4l.toLong, 4l.toLong))));
    assert(rollingMax((List[Long](3l.toLong, 2l.toLong, 3l.toLong, 100l.toLong, 3l.toLong))).equals((List[Long](3l.toLong, 3l.toLong, 3l.toLong, 100l.toLong, 100l.toLong))));
    }

}
