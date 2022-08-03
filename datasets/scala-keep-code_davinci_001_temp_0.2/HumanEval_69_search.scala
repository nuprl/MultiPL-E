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
    def search(lst : List[Long]) : Long = {
        var max = -1L
        var maxFreq = 0L
        var freq = 0L
        for (i <- lst) {
            if (i > 0) {
                if (i == max) {
                    freq += 1
                } else if (i > max) {
                    max = i
                    freq = 1
                }
            }
        }
        if (freq >= max) {
            max
        } else {
            -1
        }

    }
    def main(args: Array[String]) = {
    assert(search((List[Long](5l.toLong, 5l.toLong, 5l.toLong, 5l.toLong, 1l.toLong))) == (1l));
    assert(search((List[Long](4l.toLong, 1l.toLong, 4l.toLong, 1l.toLong, 4l.toLong, 4l.toLong))) == (4l));
    assert(search((List[Long](3l.toLong, 3l.toLong))) == (-1l));
    assert(search((List[Long](8l.toLong, 8l.toLong, 8l.toLong, 8l.toLong, 8l.toLong, 8l.toLong, 8l.toLong, 8l.toLong))) == (8l));
    assert(search((List[Long](2l.toLong, 3l.toLong, 3l.toLong, 2l.toLong, 2l.toLong))) == (2l));
    assert(search((List[Long](2l.toLong, 7l.toLong, 8l.toLong, 8l.toLong, 4l.toLong, 8l.toLong, 7l.toLong, 3l.toLong, 9l.toLong, 6l.toLong, 5l.toLong, 10l.toLong, 4l.toLong, 3l.toLong, 6l.toLong, 7l.toLong, 1l.toLong, 7l.toLong, 4l.toLong, 10l.toLong, 8l.toLong, 1l.toLong))) == (1l));
    assert(search((List[Long](3l.toLong, 2l.toLong, 8l.toLong, 2l.toLong))) == (2l));
    assert(search((List[Long](6l.toLong, 7l.toLong, 1l.toLong, 8l.toLong, 8l.toLong, 10l.toLong, 5l.toLong, 8l.toLong, 5l.toLong, 3l.toLong, 10l.toLong))) == (1l));
    assert(search((List[Long](8l.toLong, 8l.toLong, 3l.toLong, 6l.toLong, 5l.toLong, 6l.toLong, 4l.toLong))) == (-1l));
    assert(search((List[Long](6l.toLong, 9l.toLong, 6l.toLong, 7l.toLong, 1l.toLong, 4l.toLong, 7l.toLong, 1l.toLong, 8l.toLong, 8l.toLong, 9l.toLong, 8l.toLong, 10l.toLong, 10l.toLong, 8l.toLong, 4l.toLong, 10l.toLong, 4l.toLong, 10l.toLong, 1l.toLong, 2l.toLong, 9l.toLong, 5l.toLong, 7l.toLong, 9l.toLong))) == (1l));
    assert(search((List[Long](1l.toLong, 9l.toLong, 10l.toLong, 1l.toLong, 3l.toLong))) == (1l));
    assert(search((List[Long](6l.toLong, 9l.toLong, 7l.toLong, 5l.toLong, 8l.toLong, 7l.toLong, 5l.toLong, 3l.toLong, 7l.toLong, 5l.toLong, 10l.toLong, 10l.toLong, 3l.toLong, 6l.toLong, 10l.toLong, 2l.toLong, 8l.toLong, 6l.toLong, 5l.toLong, 4l.toLong, 9l.toLong, 5l.toLong, 3l.toLong, 10l.toLong))) == (5l));
    assert(search((List[Long](1l.toLong))) == (1l));
    assert(search((List[Long](8l.toLong, 8l.toLong, 10l.toLong, 6l.toLong, 4l.toLong, 3l.toLong, 5l.toLong, 8l.toLong, 2l.toLong, 4l.toLong, 2l.toLong, 8l.toLong, 4l.toLong, 6l.toLong, 10l.toLong, 4l.toLong, 2l.toLong, 1l.toLong, 10l.toLong, 2l.toLong, 1l.toLong, 1l.toLong, 5l.toLong))) == (4l));
    assert(search((List[Long](2l.toLong, 10l.toLong, 4l.toLong, 8l.toLong, 2l.toLong, 10l.toLong, 5l.toLong, 1l.toLong, 2l.toLong, 9l.toLong, 5l.toLong, 5l.toLong, 6l.toLong, 3l.toLong, 8l.toLong, 6l.toLong, 4l.toLong, 10l.toLong))) == (2l));
    assert(search((List[Long](1l.toLong, 6l.toLong, 10l.toLong, 1l.toLong, 6l.toLong, 9l.toLong, 10l.toLong, 8l.toLong, 6l.toLong, 8l.toLong, 7l.toLong, 3l.toLong))) == (1l));
    assert(search((List[Long](9l.toLong, 2l.toLong, 4l.toLong, 1l.toLong, 5l.toLong, 1l.toLong, 5l.toLong, 2l.toLong, 5l.toLong, 7l.toLong, 7l.toLong, 7l.toLong, 3l.toLong, 10l.toLong, 1l.toLong, 5l.toLong, 4l.toLong, 2l.toLong, 8l.toLong, 4l.toLong, 1l.toLong, 9l.toLong, 10l.toLong, 7l.toLong, 10l.toLong, 2l.toLong, 8l.toLong, 10l.toLong, 9l.toLong, 4l.toLong))) == (4l));
    assert(search((List[Long](2l.toLong, 6l.toLong, 4l.toLong, 2l.toLong, 8l.toLong, 7l.toLong, 5l.toLong, 6l.toLong, 4l.toLong, 10l.toLong, 4l.toLong, 6l.toLong, 3l.toLong, 7l.toLong, 8l.toLong, 8l.toLong, 3l.toLong, 1l.toLong, 4l.toLong, 2l.toLong, 2l.toLong, 10l.toLong, 7l.toLong))) == (4l));
    assert(search((List[Long](9l.toLong, 8l.toLong, 6l.toLong, 10l.toLong, 2l.toLong, 6l.toLong, 10l.toLong, 2l.toLong, 7l.toLong, 8l.toLong, 10l.toLong, 3l.toLong, 8l.toLong, 2l.toLong, 6l.toLong, 2l.toLong, 3l.toLong, 1l.toLong))) == (2l));
    assert(search((List[Long](5l.toLong, 5l.toLong, 3l.toLong, 9l.toLong, 5l.toLong, 6l.toLong, 3l.toLong, 2l.toLong, 8l.toLong, 5l.toLong, 6l.toLong, 10l.toLong, 10l.toLong, 6l.toLong, 8l.toLong, 4l.toLong, 10l.toLong, 7l.toLong, 7l.toLong, 10l.toLong, 8l.toLong))) == (-1l));
    assert(search((List[Long](10l.toLong))) == (-1l));
    assert(search((List[Long](9l.toLong, 7l.toLong, 7l.toLong, 2l.toLong, 4l.toLong, 7l.toLong, 2l.toLong, 10l.toLong, 9l.toLong, 7l.toLong, 5l.toLong, 7l.toLong, 2l.toLong))) == (2l));
    assert(search((List[Long](5l.toLong, 4l.toLong, 10l.toLong, 2l.toLong, 1l.toLong, 1l.toLong, 10l.toLong, 3l.toLong, 6l.toLong, 1l.toLong, 8l.toLong))) == (1l));
    assert(search((List[Long](7l.toLong, 9l.toLong, 9l.toLong, 9l.toLong, 3l.toLong, 4l.toLong, 1l.toLong, 5l.toLong, 9l.toLong, 1l.toLong, 2l.toLong, 1l.toLong, 1l.toLong, 10l.toLong, 7l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 6l.toLong, 7l.toLong, 7l.toLong, 6l.toLong))) == (1l));
    assert(search((List[Long](3l.toLong, 10l.toLong, 10l.toLong, 9l.toLong, 2l.toLong))) == (-1l));
    }

}
