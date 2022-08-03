import scala.math._
import scala.collection.mutable._
object Problem {
    // Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    // >>> intersperse([], 4)
    // []
    // >>> intersperse([1, 2, 3], 4)
    // [1, 4, 2, 4, 3]
    def intersperse(numbers : List[Int], delimeter : Int) : List[Int] = {
        if (numbers.length == 0) {
            return List()
        }
        var result = List(numbers(0))
        for (i <- 1 until numbers.length) {
            result = result ::: List(delimeter) ::: List(numbers(i))
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(intersperse((List[Int]()), (7)).equals((List[Int]())));
    assert(intersperse((List[Int](5.toInt, 6.toInt, 3.toInt, 2.toInt)), (8)).equals((List[Int](5.toInt, 8.toInt, 6.toInt, 8.toInt, 3.toInt, 8.toInt, 2.toInt))));
    assert(intersperse((List[Int](2.toInt, 2.toInt, 2.toInt)), (2)).equals((List[Int](2.toInt, 2.toInt, 2.toInt, 2.toInt, 2.toInt))));
    }

}
