import scala.math._
import scala.collection.mutable._
object Problem {
    // Return maximum element in the list.
    // >>> max_element([1, 2, 3])
    // 3
    // >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // 123
    def maxElement(l : List[Long]) : Long = {
        var max = l(0)
        for (i <- 1 until l.length) {
            if (l(i) > max) {
                max = l(i)
            }
        }
        return max

    }
    def main(args: Array[String]) = {
    assert(maxElement((List[Long](1l.toLong, 2l.toLong, 3l.toLong))) == (3l));
    assert(maxElement((List[Long](5l.toLong, 3l.toLong, -5l.toLong, 2l.toLong, -3l.toLong, 3l.toLong, 9l.toLong, 0l.toLong, 124l.toLong, 1l.toLong, -10l.toLong))) == (124l));
    }

}
