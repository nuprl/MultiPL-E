import scala.math._
import scala.collection.mutable._
object Problem {
    // Return maximum element in the list.
    // >>> max_element([1, 2, 3])
    // 3
    // >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // 123
    def maxElement(l : List[Int]) : Int = {
        var max = l(0)
        for (i <- 1 until l.length) {
            if (l(i) > max) {
                max = l(i)
            }
        }
        return max

    }
    def main(args: Array[String]) = {
    assert(maxElement((List[Int](1.toInt, 2.toInt, 3.toInt))) == (3));
    assert(maxElement((List[Int](5.toInt, 3.toInt, -5.toInt, 2.toInt, -3.toInt, 3.toInt, 9.toInt, 0.toInt, 124.toInt, 1.toInt, -10.toInt))) == (124));
    }

}
