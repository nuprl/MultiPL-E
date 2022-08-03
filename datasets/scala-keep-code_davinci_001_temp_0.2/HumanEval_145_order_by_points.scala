import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function which sorts the given list of integers
    // in ascending order according to the sum of their digits.
    // Note: if there are several items with similar sum of their digits,
    // order them based on their index in original list.
    // For example:
    // >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    // >>> order_by_points([]) == []
    def orderByPoints(nums : List[Long]) : List[Long] = {
        val nums_with_points = nums.map(n => (n, n.toString.map(_.asDigit).sum))
        val sorted_nums = nums_with_points.sortBy(_._2).map(_._1)
        sorted_nums

    }
    def main(args: Array[String]) = {
    assert(orderByPoints((List[Long](1l.toLong, 11l.toLong, -1l.toLong, -11l.toLong, -12l.toLong))).equals((List[Long](-1l.toLong, -11l.toLong, 1l.toLong, -12l.toLong, 11l.toLong))));
    assert(orderByPoints((List[Long](1234l.toLong, 423l.toLong, 463l.toLong, 145l.toLong, 2l.toLong, 423l.toLong, 423l.toLong, 53l.toLong, 6l.toLong, 37l.toLong, 3457l.toLong, 3l.toLong, 56l.toLong, 0l.toLong, 46l.toLong))).equals((List[Long](0l.toLong, 2l.toLong, 3l.toLong, 6l.toLong, 53l.toLong, 423l.toLong, 423l.toLong, 423l.toLong, 1234l.toLong, 145l.toLong, 37l.toLong, 46l.toLong, 56l.toLong, 463l.toLong, 3457l.toLong))));
    assert(orderByPoints((List[Long]())).equals((List[Long]())));
    assert(orderByPoints((List[Long](1l.toLong, -11l.toLong, -32l.toLong, 43l.toLong, 54l.toLong, -98l.toLong, 2l.toLong, -3l.toLong))).equals((List[Long](-3l.toLong, -32l.toLong, -98l.toLong, -11l.toLong, 1l.toLong, 2l.toLong, 43l.toLong, 54l.toLong))));
    assert(orderByPoints((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong, 9l.toLong, 10l.toLong, 11l.toLong))).equals((List[Long](1l.toLong, 10l.toLong, 2l.toLong, 11l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong, 9l.toLong))));
    assert(orderByPoints((List[Long](0l.toLong, 6l.toLong, 6l.toLong, -76l.toLong, -21l.toLong, 23l.toLong, 4l.toLong))).equals((List[Long](-76l.toLong, -21l.toLong, 0l.toLong, 4l.toLong, 23l.toLong, 6l.toLong, 6l.toLong))));
    }

}
