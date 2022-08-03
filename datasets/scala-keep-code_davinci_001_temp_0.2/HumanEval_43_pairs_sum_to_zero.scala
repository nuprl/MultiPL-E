import scala.math._
import scala.collection.mutable._
object Problem {
    // pairs_sum_to_zero takes a list of integers as an input.
    // it returns True if there are two distinct elements in the list that
    // sum to zero, and False otherwise.
    // >>> pairs_sum_to_zero([1, 3, 5, 0])
    // False
    // >>> pairs_sum_to_zero([1, 3, -2, 1])
    // False
    // >>> pairs_sum_to_zero([1, 2, 3, 7])
    // False
    // >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
    // True
    // >>> pairs_sum_to_zero([1])
    // False
    def pairsSumToZero(l : List[Int]) : Boolean = {
        // your code here
        return false

    }
    def main(args: Array[String]) = {
    assert(pairsSumToZero((List[Int](1.toInt, 3.toInt, 5.toInt, 0.toInt))) == (false));
    assert(pairsSumToZero((List[Int](1.toInt, 3.toInt, -2.toInt, 1.toInt))) == (false));
    assert(pairsSumToZero((List[Int](1.toInt, 2.toInt, 3.toInt, 7.toInt))) == (false));
    assert(pairsSumToZero((List[Int](2.toInt, 4.toInt, -5.toInt, 3.toInt, 5.toInt, 7.toInt))) == (true));
    assert(pairsSumToZero((List[Int](1.toInt))) == (false));
    assert(pairsSumToZero((List[Int](-3.toInt, 9.toInt, -1.toInt, 3.toInt, 2.toInt, 30.toInt))) == (true));
    assert(pairsSumToZero((List[Int](-3.toInt, 9.toInt, -1.toInt, 3.toInt, 2.toInt, 31.toInt))) == (true));
    assert(pairsSumToZero((List[Int](-3.toInt, 9.toInt, -1.toInt, 4.toInt, 2.toInt, 30.toInt))) == (false));
    assert(pairsSumToZero((List[Int](-3.toInt, 9.toInt, -1.toInt, 4.toInt, 2.toInt, 31.toInt))) == (false));
    }

}
