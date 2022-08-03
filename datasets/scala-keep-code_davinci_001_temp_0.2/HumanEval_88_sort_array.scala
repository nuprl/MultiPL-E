import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an array of non-negative integers, return a copy of the given array after sorting,
    // you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
    // or sort it in descending order if the sum( first index value, last index value) is even.
    // Note:
    // * don't change the given array.
    // Examples:
    // * sort_array([]) => []
    // * sort_array([5]) => [5]
    // * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
    // * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
    def sortArray(array : List[Long]) : List[Long] = {
        // Write your code here
        return array

    }
    def main(args: Array[String]) = {
    assert(sortArray((List[Long]())).equals((List[Long]())));
    assert(sortArray((List[Long](5l.toLong))).equals((List[Long](5l.toLong))));
    assert(sortArray((List[Long](2l.toLong, 4l.toLong, 3l.toLong, 0l.toLong, 1l.toLong, 5l.toLong))).equals((List[Long](0l.toLong, 1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong))));
    assert(sortArray((List[Long](2l.toLong, 4l.toLong, 3l.toLong, 0l.toLong, 1l.toLong, 5l.toLong, 6l.toLong))).equals((List[Long](6l.toLong, 5l.toLong, 4l.toLong, 3l.toLong, 2l.toLong, 1l.toLong, 0l.toLong))));
    assert(sortArray((List[Long](2l.toLong, 1l.toLong))).equals((List[Long](1l.toLong, 2l.toLong))));
    assert(sortArray((List[Long](15l.toLong, 42l.toLong, 87l.toLong, 32l.toLong, 11l.toLong, 0l.toLong))).equals((List[Long](0l.toLong, 11l.toLong, 15l.toLong, 32l.toLong, 42l.toLong, 87l.toLong))));
    assert(sortArray((List[Long](21l.toLong, 14l.toLong, 23l.toLong, 11l.toLong))).equals((List[Long](23l.toLong, 21l.toLong, 14l.toLong, 11l.toLong))));
    }

}
