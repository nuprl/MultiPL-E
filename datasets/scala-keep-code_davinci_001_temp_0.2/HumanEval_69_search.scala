import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a non-empty list of positive integers. Return the greatest integer that is greater than 
    // zero, and has a frequency greater than or equal to the value of the integer itself. 
    // The frequency of an integer is the number of times it appears in the list.
    // If no such a value exist, return -1.
    // Examples:
    // search([4, 1, 2, 2, 3, 1]) == 2
    // search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
    // search([5, 5, 4, 4, 4]) == -1
    def search(lst : List[Int]) : Int = {
        var max = -1
        var maxFreq = 0
        var freq = 0
        for (i <- lst) {
            if (i > 0) {
                freq = lst.count(_ == i)
                if (freq > maxFreq) {
                    max = i
                    maxFreq = freq
                }
            }
        }
        return max

    }
    def main(args: Array[String]) = {
    assert(search((List[Int](5.toInt, 5.toInt, 5.toInt, 5.toInt, 1.toInt))) == (1));
    assert(search((List[Int](4.toInt, 1.toInt, 4.toInt, 1.toInt, 4.toInt, 4.toInt))) == (4));
    assert(search((List[Int](3.toInt, 3.toInt))) == (-1));
    assert(search((List[Int](8.toInt, 8.toInt, 8.toInt, 8.toInt, 8.toInt, 8.toInt, 8.toInt, 8.toInt))) == (8));
    assert(search((List[Int](2.toInt, 3.toInt, 3.toInt, 2.toInt, 2.toInt))) == (2));
    assert(search((List[Int](2.toInt, 7.toInt, 8.toInt, 8.toInt, 4.toInt, 8.toInt, 7.toInt, 3.toInt, 9.toInt, 6.toInt, 5.toInt, 10.toInt, 4.toInt, 3.toInt, 6.toInt, 7.toInt, 1.toInt, 7.toInt, 4.toInt, 10.toInt, 8.toInt, 1.toInt))) == (1));
    assert(search((List[Int](3.toInt, 2.toInt, 8.toInt, 2.toInt))) == (2));
    assert(search((List[Int](6.toInt, 7.toInt, 1.toInt, 8.toInt, 8.toInt, 10.toInt, 5.toInt, 8.toInt, 5.toInt, 3.toInt, 10.toInt))) == (1));
    assert(search((List[Int](8.toInt, 8.toInt, 3.toInt, 6.toInt, 5.toInt, 6.toInt, 4.toInt))) == (-1));
    assert(search((List[Int](6.toInt, 9.toInt, 6.toInt, 7.toInt, 1.toInt, 4.toInt, 7.toInt, 1.toInt, 8.toInt, 8.toInt, 9.toInt, 8.toInt, 10.toInt, 10.toInt, 8.toInt, 4.toInt, 10.toInt, 4.toInt, 10.toInt, 1.toInt, 2.toInt, 9.toInt, 5.toInt, 7.toInt, 9.toInt))) == (1));
    assert(search((List[Int](1.toInt, 9.toInt, 10.toInt, 1.toInt, 3.toInt))) == (1));
    assert(search((List[Int](6.toInt, 9.toInt, 7.toInt, 5.toInt, 8.toInt, 7.toInt, 5.toInt, 3.toInt, 7.toInt, 5.toInt, 10.toInt, 10.toInt, 3.toInt, 6.toInt, 10.toInt, 2.toInt, 8.toInt, 6.toInt, 5.toInt, 4.toInt, 9.toInt, 5.toInt, 3.toInt, 10.toInt))) == (5));
    assert(search((List[Int](1.toInt))) == (1));
    assert(search((List[Int](8.toInt, 8.toInt, 10.toInt, 6.toInt, 4.toInt, 3.toInt, 5.toInt, 8.toInt, 2.toInt, 4.toInt, 2.toInt, 8.toInt, 4.toInt, 6.toInt, 10.toInt, 4.toInt, 2.toInt, 1.toInt, 10.toInt, 2.toInt, 1.toInt, 1.toInt, 5.toInt))) == (4));
    assert(search((List[Int](2.toInt, 10.toInt, 4.toInt, 8.toInt, 2.toInt, 10.toInt, 5.toInt, 1.toInt, 2.toInt, 9.toInt, 5.toInt, 5.toInt, 6.toInt, 3.toInt, 8.toInt, 6.toInt, 4.toInt, 10.toInt))) == (2));
    assert(search((List[Int](1.toInt, 6.toInt, 10.toInt, 1.toInt, 6.toInt, 9.toInt, 10.toInt, 8.toInt, 6.toInt, 8.toInt, 7.toInt, 3.toInt))) == (1));
    assert(search((List[Int](9.toInt, 2.toInt, 4.toInt, 1.toInt, 5.toInt, 1.toInt, 5.toInt, 2.toInt, 5.toInt, 7.toInt, 7.toInt, 7.toInt, 3.toInt, 10.toInt, 1.toInt, 5.toInt, 4.toInt, 2.toInt, 8.toInt, 4.toInt, 1.toInt, 9.toInt, 10.toInt, 7.toInt, 10.toInt, 2.toInt, 8.toInt, 10.toInt, 9.toInt, 4.toInt))) == (4));
    assert(search((List[Int](2.toInt, 6.toInt, 4.toInt, 2.toInt, 8.toInt, 7.toInt, 5.toInt, 6.toInt, 4.toInt, 10.toInt, 4.toInt, 6.toInt, 3.toInt, 7.toInt, 8.toInt, 8.toInt, 3.toInt, 1.toInt, 4.toInt, 2.toInt, 2.toInt, 10.toInt, 7.toInt))) == (4));
    assert(search((List[Int](9.toInt, 8.toInt, 6.toInt, 10.toInt, 2.toInt, 6.toInt, 10.toInt, 2.toInt, 7.toInt, 8.toInt, 10.toInt, 3.toInt, 8.toInt, 2.toInt, 6.toInt, 2.toInt, 3.toInt, 1.toInt))) == (2));
    assert(search((List[Int](5.toInt, 5.toInt, 3.toInt, 9.toInt, 5.toInt, 6.toInt, 3.toInt, 2.toInt, 8.toInt, 5.toInt, 6.toInt, 10.toInt, 10.toInt, 6.toInt, 8.toInt, 4.toInt, 10.toInt, 7.toInt, 7.toInt, 10.toInt, 8.toInt))) == (-1));
    assert(search((List[Int](10.toInt))) == (-1));
    assert(search((List[Int](9.toInt, 7.toInt, 7.toInt, 2.toInt, 4.toInt, 7.toInt, 2.toInt, 10.toInt, 9.toInt, 7.toInt, 5.toInt, 7.toInt, 2.toInt))) == (2));
    assert(search((List[Int](5.toInt, 4.toInt, 10.toInt, 2.toInt, 1.toInt, 1.toInt, 10.toInt, 3.toInt, 6.toInt, 1.toInt, 8.toInt))) == (1));
    assert(search((List[Int](7.toInt, 9.toInt, 9.toInt, 9.toInt, 3.toInt, 4.toInt, 1.toInt, 5.toInt, 9.toInt, 1.toInt, 2.toInt, 1.toInt, 1.toInt, 10.toInt, 7.toInt, 5.toInt, 6.toInt, 7.toInt, 6.toInt, 7.toInt, 7.toInt, 6.toInt))) == (1));
    assert(search((List[Int](3.toInt, 10.toInt, 10.toInt, 9.toInt, 2.toInt))) == (-1));
    }

}
