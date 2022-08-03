import scala.math._
import scala.collection.mutable._
object Problem {
    // In this Kata, you have to sort an array of non-negative integers according to
    // number of ones in their binary representation in ascending order.
    // For similar number of ones, sort based on decimal value.
    // It must be implemented like this:
    // >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
    // >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
    // >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
    def sortArray(arr : List[Int]) : List[Int] = {
        val sorted = arr.sortWith((a, b) => {
            val a_bin = Integer.toBinaryString(a)
            val b_bin = Integer.toBinaryString(b)
            val a_ones = a_bin.count(_ == '1')
            val b_ones = b_bin.count(_ == '1')
            if (a_ones == b_ones) {
                a < b
            } else {
                a_ones < b_ones
            }
        })
        sorted

    }
    def main(args: Array[String]) = {
    assert(sortArray((List[Int](1.toInt, 5.toInt, 2.toInt, 3.toInt, 4.toInt))).equals((List[Int](1.toInt, 2.toInt, 4.toInt, 3.toInt, 5.toInt))));
    assert(sortArray((List[Int](-2.toInt, -3.toInt, -4.toInt, -5.toInt, -6.toInt))).equals((List[Int](-4.toInt, -2.toInt, -6.toInt, -5.toInt, -3.toInt))));
    assert(sortArray((List[Int](1.toInt, 0.toInt, 2.toInt, 3.toInt, 4.toInt))).equals((List[Int](0.toInt, 1.toInt, 2.toInt, 4.toInt, 3.toInt))));
    assert(sortArray((List[Int]())).equals((List[Int]())));
    assert(sortArray((List[Int](2.toInt, 5.toInt, 77.toInt, 4.toInt, 5.toInt, 3.toInt, 5.toInt, 7.toInt, 2.toInt, 3.toInt, 4.toInt))).equals((List[Int](2.toInt, 2.toInt, 4.toInt, 4.toInt, 3.toInt, 3.toInt, 5.toInt, 5.toInt, 5.toInt, 7.toInt, 77.toInt))));
    assert(sortArray((List[Int](3.toInt, 6.toInt, 44.toInt, 12.toInt, 32.toInt, 5.toInt))).equals((List[Int](32.toInt, 3.toInt, 5.toInt, 6.toInt, 12.toInt, 44.toInt))));
    assert(sortArray((List[Int](2.toInt, 4.toInt, 8.toInt, 16.toInt, 32.toInt))).equals((List[Int](2.toInt, 4.toInt, 8.toInt, 16.toInt, 32.toInt))));
    assert(sortArray((List[Int](2.toInt, 4.toInt, 8.toInt, 16.toInt, 32.toInt))).equals((List[Int](2.toInt, 4.toInt, 8.toInt, 16.toInt, 32.toInt))));
    }

}
