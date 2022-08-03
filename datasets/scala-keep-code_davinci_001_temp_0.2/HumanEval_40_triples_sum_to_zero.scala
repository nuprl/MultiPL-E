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
    def triplesSumToZero(l : List[Long]) : Boolean = {
        // your code here
        var l1 = l.sorted
        var l2 = l1.distinct
        var l3 = l2.sorted
        var l4 = l3.reverse
        var l5 = l4.distinct
        var l6 = l5.sorted
        var l7 = l6.reverse
        var l8 = l7.distinct
        var l9 = l8.sorted
        var l10 = l9.reverse
        var l11 = l10.distinct
        var l12 = l11.sorted
        var l13 = l12.reverse
        var l14 = l13.distinct
        var l15 = l14.sorted
        var l16 = l15.reverse
        var l17 = l16.distinct
        var l18 = l17.sorted
        var l19 = l18.reverse
        var l20 = l19.distinct
        var l21 = l20.sorted
        var l22 = l21.reverse
        var l23 = l22.distinct
        var l24 = l23.sorted
        var l25 = l24.reverse
        var l26 = l25.distinct
        var l27 = l26.sorted
        var l28 = l27.reverse
        var l29 = l28.distinct
        var l30 = l29.sorted
        var l31 = l30.reverse
        var l32 = l31.distinct
        var l33 = l32.sorted
        var l34 = l33.reverse
        var l35 = l34.distinct
        var l36 = l35.sorted
        var l37 = l36.reverse
        var l38 = l37.distinct
        var l39 = l38.sorted
        var l40 = l39.reverse
        var l41 = l40.distinct
        var l42 = l41.sorted
        var l43 = l42.reverse
        var l44 = l43.distinct
        var l45 = l44.sorted
        var l46 = l45.reverse
        var l

    }
    def main(args: Array[String]) = {
    assert(triplesSumToZero((List[Long](1l.toLong, 3l.toLong, 5l.toLong, 0l.toLong))) == (false));
    assert(triplesSumToZero((List[Long](1l.toLong, 3l.toLong, 5l.toLong, -1l.toLong))) == (false));
    assert(triplesSumToZero((List[Long](1l.toLong, 3l.toLong, -2l.toLong, 1l.toLong))) == (true));
    assert(triplesSumToZero((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 7l.toLong))) == (false));
    assert(triplesSumToZero((List[Long](1l.toLong, 2l.toLong, 5l.toLong, 7l.toLong))) == (false));
    assert(triplesSumToZero((List[Long](2l.toLong, 4l.toLong, -5l.toLong, 3l.toLong, 9l.toLong, 7l.toLong))) == (true));
    assert(triplesSumToZero((List[Long](1l.toLong))) == (false));
    assert(triplesSumToZero((List[Long](1l.toLong, 3l.toLong, 5l.toLong, -100l.toLong))) == (false));
    assert(triplesSumToZero((List[Long](100l.toLong, 3l.toLong, 5l.toLong, -100l.toLong))) == (false));
    }

}
