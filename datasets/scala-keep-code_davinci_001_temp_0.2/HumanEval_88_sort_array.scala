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
    def sortArray(array : List[Int]) : List[Int] = {
        val sum = array.head + array.last
        if (sum % 2 == 0) {
            array.sortWith(_ > _)
        } else {
            array.sortWith(_ < _)
        }

    }
    def main(args: Array[String]) = {
    assert(sortArray((List[Int]())).equals((List[Int]())));
    assert(sortArray((List[Int](5.toInt))).equals((List[Int](5.toInt))));
    assert(sortArray((List[Int](2.toInt, 4.toInt, 3.toInt, 0.toInt, 1.toInt, 5.toInt))).equals((List[Int](0.toInt, 1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt))));
    assert(sortArray((List[Int](2.toInt, 4.toInt, 3.toInt, 0.toInt, 1.toInt, 5.toInt, 6.toInt))).equals((List[Int](6.toInt, 5.toInt, 4.toInt, 3.toInt, 2.toInt, 1.toInt, 0.toInt))));
    assert(sortArray((List[Int](2.toInt, 1.toInt))).equals((List[Int](1.toInt, 2.toInt))));
    assert(sortArray((List[Int](15.toInt, 42.toInt, 87.toInt, 32.toInt, 11.toInt, 0.toInt))).equals((List[Int](0.toInt, 11.toInt, 15.toInt, 32.toInt, 42.toInt, 87.toInt))));
    assert(sortArray((List[Int](21.toInt, 14.toInt, 23.toInt, 11.toInt))).equals((List[Int](23.toInt, 21.toInt, 14.toInt, 11.toInt))));
    }

}
