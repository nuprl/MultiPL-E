import scala.math._
import scala.collection.mutable._
object Problem {
    // Return median of elements in the list l.
    // >>> median([3, 1, 2, 4, 5])
    // 3
    // >>> median([-10, 4, 6, 1000, 10, 20])
    // 15.0
    def median(l : List[Int]) : Float = {
        val sorted = l.sorted
        val n = sorted.length
        if (n % 2 == 0) {
            (sorted(n / 2 - 1) + sorted(n / 2)) / 2.0f
        } else {
            sorted(n / 2)
        }

    }
    def main(args: Array[String]) = {
    assert(median((List[Int](3.toInt, 1.toInt, 2.toInt, 4.toInt, 5.toInt))) == 3);
    assert(median((List[Int](-10.toInt, 4.toInt, 6.toInt, 1000.toInt, 10.toInt, 20.toInt))) == (8.0f));
    assert(median((List[Int](5.toInt))) == 5);
    assert(median((List[Int](6.toInt, 5.toInt))) == (5.5f));
    assert(median((List[Int](8.toInt, 1.toInt, 3.toInt, 9.toInt, 9.toInt, 2.toInt, 7.toInt))) == 7);
    }

}
