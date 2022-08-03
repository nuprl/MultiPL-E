import scala.math._
import scala.collection.mutable._
object Problem {
    // Return list with elements incremented by 1.
    // >>> incr_list([1, 2, 3])
    // [2, 3, 4]
    // >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [6, 4, 6, 3, 4, 4, 10, 1, 124]
    def incrList(l : List[Int]) : List[Int] = {
        l.map(x => x + 1)

    }
    def main(args: Array[String]) = {
    assert(incrList((List[Int]())).equals((List[Int]())));
    assert(incrList((List[Int](3.toInt, 2.toInt, 1.toInt))).equals((List[Int](4.toInt, 3.toInt, 2.toInt))));
    assert(incrList((List[Int](5.toInt, 2.toInt, 5.toInt, 2.toInt, 3.toInt, 3.toInt, 9.toInt, 0.toInt, 123.toInt))).equals((List[Int](6.toInt, 3.toInt, 6.toInt, 3.toInt, 4.toInt, 4.toInt, 10.toInt, 1.toInt, 124.toInt))));
    }

}
