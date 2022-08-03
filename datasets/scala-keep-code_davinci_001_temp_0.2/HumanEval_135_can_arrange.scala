import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function which returns the largest index of an element which
    // is not greater than or equal to the element immediately preceding it. If
    // no such element exists then return -1. The given array will not contain
    // duplicate values.
    // Examples:
    // can_arrange([1,2,4,3,5]) = 3
    // can_arrange([1,2,3]) = -1
    def canArrange(arr : List[Int]) : Int = {
        val sorted = arr.sorted
        var i = 0
        var j = sorted.length - 1
        while (i < j) {
            if (sorted(i) + sorted(j) > sorted(j - 1)) {
                j -= 1
            } else {
                i += 1
            }
        }
        if (i == j) -1 else i

    }
    def main(args: Array[String]) = {
    assert(canArrange((List[Int](1.toInt, 2.toInt, 4.toInt, 3.toInt, 5.toInt))) == (3));
    assert(canArrange((List[Int](1.toInt, 2.toInt, 4.toInt, 5.toInt))) == (-1));
    assert(canArrange((List[Int](1.toInt, 4.toInt, 2.toInt, 5.toInt, 6.toInt, 7.toInt, 8.toInt, 9.toInt, 10.toInt))) == (2));
    assert(canArrange((List[Int](4.toInt, 8.toInt, 5.toInt, 7.toInt, 3.toInt))) == (4));
    assert(canArrange((List[Int]())) == (-1));
    }

}
