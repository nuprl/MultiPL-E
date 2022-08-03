import scala.math._
import scala.collection.mutable._
object Problem {
    // Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    // >>> intersperse([], 4)
    // []
    // >>> intersperse([1, 2, 3], 4)
    // [1, 4, 2, 4, 3]
    def intersperse(numbers : List[Long], delimeter : Long) : List[Long] = {
        if (numbers.length == 0) {
            return List()
        } else {
            return numbers.head :: List(delimeter) ::: intersperse(numbers.tail, delimeter)
        }

    }
    def main(args: Array[String]) = {
    assert(intersperse((List[Long]()), (7l)).equals((List[Long]())));
    assert(intersperse((List[Long](5l.toLong, 6l.toLong, 3l.toLong, 2l.toLong)), (8l)).equals((List[Long](5l.toLong, 8l.toLong, 6l.toLong, 8l.toLong, 3l.toLong, 8l.toLong, 2l.toLong))));
    assert(intersperse((List[Long](2l.toLong, 2l.toLong, 2l.toLong)), (2l)).equals((List[Long](2l.toLong, 2l.toLong, 2l.toLong, 2l.toLong, 2l.toLong))));
    }

}
