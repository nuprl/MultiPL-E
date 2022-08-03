import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
    // Examples
    // solution([5, 8, 7, 1]) ==> 12
    // solution([3, 3, 3, 3, 3]) ==> 9
    // solution([30, 13, 24, 321]) ==>0
    def solution(lst : List[Int]) : Int = {
        var sum = 0
        for (i <- 0 until lst.length) {
            if (i % 2 == 0 && lst(i) % 2 != 0) {
                sum += lst(i)
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(solution((List[Int](5.toInt, 8.toInt, 7.toInt, 1.toInt))) == (12));
    assert(solution((List[Int](3.toInt, 3.toInt, 3.toInt, 3.toInt, 3.toInt))) == (9));
    assert(solution((List[Int](30.toInt, 13.toInt, 24.toInt, 321.toInt))) == (0));
    assert(solution((List[Int](5.toInt, 9.toInt))) == (5));
    assert(solution((List[Int](2.toInt, 4.toInt, 8.toInt))) == (0));
    assert(solution((List[Int](30.toInt, 13.toInt, 23.toInt, 32.toInt))) == (23));
    assert(solution((List[Int](3.toInt, 13.toInt, 2.toInt, 9.toInt))) == (3));
    }

}
