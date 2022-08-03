import scala.math._
import scala.collection.mutable._
object Problem {
    // triples_sum_to_zero takes a list of integers as an input.
    // it returns True if there are three distinct elements in the list that
    // sum to zero, and False otherwise.
    // >>> triples_sum_to_zero([1, 3, 5, 0])
    // False
    // >>> triples_sum_to_zero([1, 3, -2, 1])
    // True
    // >>> triples_sum_to_zero([1, 2, 3, 7])
    // False
    // >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
    // True
    // >>> triples_sum_to_zero([1])
    // False
    def triplesSumToZero(l : List[Int]) : Boolean = {
        var l_sorted = l.sorted
        var i = 0
        var j = 0
        var k = 0
        while (i < l_sorted.length) {
            j = i + 1
            k = l_sorted.length - 1
            while (j < k) {
                if (l_sorted(i) + l_sorted(j) + l_sorted(k) == 0) {
                    return true
                }
                if (l_sorted(i) + l_sorted(j) + l_sorted(k) < 0) {
                    j += 1
                } else {
                    k -= 1
                }
            }
            i += 1
        }
        return false

    }
    def main(args: Array[String]) = {
    assert(triplesSumToZero((List[Int](1.toInt, 3.toInt, 5.toInt, 0.toInt))) == (false));
    assert(triplesSumToZero((List[Int](1.toInt, 3.toInt, 5.toInt, -1.toInt))) == (false));
    assert(triplesSumToZero((List[Int](1.toInt, 3.toInt, -2.toInt, 1.toInt))) == (true));
    assert(triplesSumToZero((List[Int](1.toInt, 2.toInt, 3.toInt, 7.toInt))) == (false));
    assert(triplesSumToZero((List[Int](1.toInt, 2.toInt, 5.toInt, 7.toInt))) == (false));
    assert(triplesSumToZero((List[Int](2.toInt, 4.toInt, -5.toInt, 3.toInt, 9.toInt, 7.toInt))) == (true));
    assert(triplesSumToZero((List[Int](1.toInt))) == (false));
    assert(triplesSumToZero((List[Int](1.toInt, 3.toInt, 5.toInt, -100.toInt))) == (false));
    assert(triplesSumToZero((List[Int](100.toInt, 3.toInt, 5.toInt, -100.toInt))) == (false));
    }

}
