import scala.math._
import scala.collection.mutable._
object Problem {
    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [0, 2, 3, 5, 9, 123]
    def unique(l : List[Int]) : List[Int] = {
        l.distinct.sorted

    }
    def main(args: Array[String]) = {
    assert(unique((List[Int](5.toInt, 3.toInt, 5.toInt, 2.toInt, 3.toInt, 3.toInt, 9.toInt, 0.toInt, 123.toInt))).equals((List[Int](0.toInt, 2.toInt, 3.toInt, 5.toInt, 9.toInt, 123.toInt))));
    }

}
