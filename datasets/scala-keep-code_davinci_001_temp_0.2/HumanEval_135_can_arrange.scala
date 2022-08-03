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
    def canArrange(arr : List[Long]) : Long = {
        // Create a map of the array
        val map = arr.zipWithIndex.toMap
        // Create a list of the indices of the elements which are not greater
        // than or equal to the element immediately preceding it.
        val indices = arr.zipWithIndex.filter(x => x._1 < x._2).map(x => x._2)
        // If the list is empty, then return -1
        if (indices.isEmpty) return -1
        // Otherwise, return the last element of the list
        else return indices.last

    }
    def main(args: Array[String]) = {
    assert(canArrange((List[Long](1l.toLong, 2l.toLong, 4l.toLong, 3l.toLong, 5l.toLong))) == (3l));
    assert(canArrange((List[Long](1l.toLong, 2l.toLong, 4l.toLong, 5l.toLong))) == (-1l));
    assert(canArrange((List[Long](1l.toLong, 4l.toLong, 2l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong, 9l.toLong, 10l.toLong))) == (2l));
    assert(canArrange((List[Long](4l.toLong, 8l.toLong, 5l.toLong, 7l.toLong, 3l.toLong))) == (4l));
    assert(canArrange((List[Long]())) == (-1l));
    }

}
