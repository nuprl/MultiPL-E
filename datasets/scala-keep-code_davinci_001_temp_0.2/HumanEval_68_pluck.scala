import scala.math._
import scala.collection.mutable._
object Problem {
    // "Given an array representing a branch of a tree that has non-negative integer nodes
    // your task is to pluck one of the nodes and return it.
    // The plucked node should be the node with the smallest even value.
    // If multiple nodes with the same smallest even value are found return the node that has smallest index.
    // The plucked node should be returned in a list, [ smalest_value, its index ],
    // If there are no even values or the given array is empty, return [].
    // Example 1:
    // Input: [4,2,3]
    // Output: [2, 1]
    // Explanation: 2 has the smallest even value, and 2 has the smallest index.
    // Example 2:
    // Input: [1,2,3]
    // Output: [2, 1]
    // Explanation: 2 has the smallest even value, and 2 has the smallest index. 
    // Example 3:
    // Input: []
    // Output: []
    // Example 4:
    // Input: [5, 0, 3, 0, 4, 2]
    // Output: [0, 1]
    // Explanation: 0 is the smallest value, but  there are two zeros,
    // so we will choose the first zero, which has the smallest index.
    // Constraints:
    // * 1 <= nodes.length <= 10000
    // * 0 <= node.value
    def pluck(arr : List[Long]) : List[Long] = {
        // arr.filter(x => x % 2 == 0).sortWith(_ < _).headOption match {
        //     case Some(x) => List(x, arr.indexOf(x))
        //     case None => List()
        // }
        arr.filter(x => x % 2 == 0).sortWith(_ < _).headOption match {
            case Some(x) => List(x, arr.indexOf(x))
            case None => List()
        }

    }
    def main(args: Array[String]) = {
    assert(pluck((List[Long](4l.toLong, 2l.toLong, 3l.toLong))).equals((List[Long](2l.toLong, 1l.toLong))));
    assert(pluck((List[Long](1l.toLong, 2l.toLong, 3l.toLong))).equals((List[Long](2l.toLong, 1l.toLong))));
    assert(pluck((List[Long]())).equals((List[Long]())));
    assert(pluck((List[Long](5l.toLong, 0l.toLong, 3l.toLong, 0l.toLong, 4l.toLong, 2l.toLong))).equals((List[Long](0l.toLong, 1l.toLong))));
    assert(pluck((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 0l.toLong, 5l.toLong, 3l.toLong))).equals((List[Long](0l.toLong, 3l.toLong))));
    assert(pluck((List[Long](5l.toLong, 4l.toLong, 8l.toLong, 4l.toLong, 8l.toLong))).equals((List[Long](4l.toLong, 1l.toLong))));
    assert(pluck((List[Long](7l.toLong, 6l.toLong, 7l.toLong, 1l.toLong))).equals((List[Long](6l.toLong, 1l.toLong))));
    assert(pluck((List[Long](7l.toLong, 9l.toLong, 7l.toLong, 1l.toLong))).equals((List[Long]())));
    }

}
