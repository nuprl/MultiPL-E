import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function that returns a tuple (a, b), where 'a' is
    // the largest of negative integers, and 'b' is the smallest
    // of positive integers in a list.
    // If there is no negative or positive integers, return them as None.
    // Examples:
    // largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
    // largest_smallest_integers([]) == (None, None)
    // largest_smallest_integers([0]) == (None, None)
    def largestSmallestIntegers(lst : List[Int]) : Tuple2[Option[Int], Option[Int]] = {
        if (lst.isEmpty) {
            (None, None)
        } else {
            var maxNegative = None : Option[Int]
            var minPositive = None : Option[Int]
            for (i <- lst) {
                if (i < 0) {
                    if (maxNegative.isEmpty) {
                        maxNegative = Some(i)
                    } else {
                        if (i > maxNegative.get) {
                            maxNegative = Some(i)
                        }
                    }
                } else {
                    if (minPositive.isEmpty) {
                        minPositive = Some(i)
                    } else {
                        if (i < minPositive.get) {
                            minPositive = Some(i)
                        }
                    }
                }
            }
            (maxNegative, minPositive)
        }

    }
    def main(args: Array[String]) = {
    assert(largestSmallestIntegers((List[Int](2.toInt, 4.toInt, 1.toInt, 3.toInt, 5.toInt, 7.toInt))).equals((Some(None), Some(1))));
    assert(largestSmallestIntegers((List[Int](2.toInt, 4.toInt, 1.toInt, 3.toInt, 5.toInt, 7.toInt, 0.toInt))).equals((Some(None), Some(1))));
    assert(largestSmallestIntegers((List[Int](1.toInt, 3.toInt, 2.toInt, 4.toInt, 5.toInt, 6.toInt, -2.toInt))).equals((-2, 1)));
    assert(largestSmallestIntegers((List[Int](4.toInt, 5.toInt, 3.toInt, 6.toInt, 2.toInt, 7.toInt, -7.toInt))).equals((-7, 2)));
    assert(largestSmallestIntegers((List[Int](7.toInt, 3.toInt, 8.toInt, 4.toInt, 9.toInt, 2.toInt, 5.toInt, -9.toInt))).equals((-9, 2)));
    assert(largestSmallestIntegers((List[Int]())).equals((Some(None), Some(None))));
    assert(largestSmallestIntegers((List[Int](0.toInt))).equals((Some(None), Some(None))));
    assert(largestSmallestIntegers((List[Int](-1.toInt, -3.toInt, -5.toInt, -6.toInt))).equals((Some(-1), Some(None))));
    assert(largestSmallestIntegers((List[Int](-1.toInt, -3.toInt, -5.toInt, -6.toInt, 0.toInt))).equals((Some(-1), Some(None))));
    assert(largestSmallestIntegers((List[Int](-6.toInt, -4.toInt, -4.toInt, -3.toInt, 1.toInt))).equals((-3, 1)));
    assert(largestSmallestIntegers((List[Int](-6.toInt, -4.toInt, -4.toInt, -3.toInt, -100.toInt, 1.toInt))).equals((-3, 1)));
    }

}
