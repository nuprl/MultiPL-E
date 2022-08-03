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
    def uniqueDigits(x : List[Long]) : List[Long] = {
        // your code here
        return List()

    }
    def main(args: Array[String]) = {
    assert(uniqueDigits((List[Long](15l.toLong, 33l.toLong, 1422l.toLong, 1l.toLong))).equals((List[Long](1l.toLong, 15l.toLong, 33l.toLong))));
    assert(uniqueDigits((List[Long](152l.toLong, 323l.toLong, 1422l.toLong, 10l.toLong))).equals((List[Long]())));
    assert(uniqueDigits((List[Long](12345l.toLong, 2033l.toLong, 111l.toLong, 151l.toLong))).equals((List[Long](111l.toLong, 151l.toLong))));
    assert(uniqueDigits((List[Long](135l.toLong, 103l.toLong, 31l.toLong))).equals((List[Long](31l.toLong, 135l.toLong))));
    }

}
