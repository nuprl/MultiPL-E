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
    def sortArray(arr : List[Long]) : List[Long] = {
        var result = List[Long]()
        var zero = List[Long]()
        var one = List[Long]()
        var two = List[Long]()
        var three = List[Long]()
        var four = List[Long]()
        var five = List[Long]()
        var six = List[Long]()
        var seven = List[Long]()
        var eight = List[Long]()
        var nine = List[Long]()
        var ten = List[Long]()
        var eleven = List[Long]()
        var twelve = List[Long]()
        var thirteen = List[Long]()
        var fourteen = List[Long]()
        var fifteen = List[Long]()
        var sixteen = List[Long]()
        var seventeen = List[Long]()
        var eighteen = List[Long]()
        var nineteen = List[Long]()
        var twenty = List[Long]()
        var twentyone = List[Long]()
        var twentytwo = List[Long]()
        var twentythree = List[Long]()
        var twentyfour = List[Long]()
        var twentyfive = List[Long]()
        var twentysix = List[Long]()
        var twentyseven = List[Long]()
        var twentyeight = List[Long]()
        var twentynine = List[Long]()
        var thirty = List[Long]()
        var thirtyone = List[Long]()
        var thirtytwo = List[Long]()
        var thirtythree = List[Long]()
        var thirtyfour = List[Long]()
        var thirtyfive = List[Long]()
        var thirtysix = List[Long]()
        var thirtyseven = List[Long]()
        var thirtyeight = List[Long]()
        var thirtynine = List[Long]()
        var forty = List[Long]()
        var fortyone = List[Long]()
        var fortytwo = List[Long]()
        var fortythree = List[Long]()
        var fortyfour = List[Long]()
        var fortyfive = List[Long]()
        var fortysix

    }
    def main(args: Array[String]) = {
    assert(sortArray((List[Long](1l.toLong, 5l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals((List[Long](1l.toLong, 2l.toLong, 4l.toLong, 3l.toLong, 5l.toLong))));
    assert(sortArray((List[Long](-2l.toLong, -3l.toLong, -4l.toLong, -5l.toLong, -6l.toLong))).equals((List[Long](-4l.toLong, -2l.toLong, -6l.toLong, -5l.toLong, -3l.toLong))));
    assert(sortArray((List[Long](1l.toLong, 0l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals((List[Long](0l.toLong, 1l.toLong, 2l.toLong, 4l.toLong, 3l.toLong))));
    assert(sortArray((List[Long]())).equals((List[Long]())));
    assert(sortArray((List[Long](2l.toLong, 5l.toLong, 77l.toLong, 4l.toLong, 5l.toLong, 3l.toLong, 5l.toLong, 7l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals((List[Long](2l.toLong, 2l.toLong, 4l.toLong, 4l.toLong, 3l.toLong, 3l.toLong, 5l.toLong, 5l.toLong, 5l.toLong, 7l.toLong, 77l.toLong))));
    assert(sortArray((List[Long](3l.toLong, 6l.toLong, 44l.toLong, 12l.toLong, 32l.toLong, 5l.toLong))).equals((List[Long](32l.toLong, 3l.toLong, 5l.toLong, 6l.toLong, 12l.toLong, 44l.toLong))));
    assert(sortArray((List[Long](2l.toLong, 4l.toLong, 8l.toLong, 16l.toLong, 32l.toLong))).equals((List[Long](2l.toLong, 4l.toLong, 8l.toLong, 16l.toLong, 32l.toLong))));
    assert(sortArray((List[Long](2l.toLong, 4l.toLong, 8l.toLong, 16l.toLong, 32l.toLong))).equals((List[Long](2l.toLong, 4l.toLong, 8l.toLong, 16l.toLong, 32l.toLong))));
    }

}
