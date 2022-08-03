import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a list of positive integers x. return a sorted list of all 
    // elements that hasn't any even digit.
    // Note: Returned list should be sorted in increasing order.
    // For example:
    // >>> unique_digits([15, 33, 1422, 1])
    // [1, 15, 33]
    // >>> unique_digits([152, 323, 1422, 10])
    // []
    def uniqueDigits(x : List[Int]) : List[Int] = {
        // your code here
        return null

    }
    def main(args: Array[String]) = {
    assert(uniqueDigits((List[Int](15.toInt, 33.toInt, 1422.toInt, 1.toInt))).equals((List[Int](1.toInt, 15.toInt, 33.toInt))));
    assert(uniqueDigits((List[Int](152.toInt, 323.toInt, 1422.toInt, 10.toInt))).equals((List[Int]())));
    assert(uniqueDigits((List[Int](12345.toInt, 2033.toInt, 111.toInt, 151.toInt))).equals((List[Int](111.toInt, 151.toInt))));
    assert(uniqueDigits((List[Int](135.toInt, 103.toInt, 31.toInt))).equals((List[Int](31.toInt, 135.toInt))));
    }

}
