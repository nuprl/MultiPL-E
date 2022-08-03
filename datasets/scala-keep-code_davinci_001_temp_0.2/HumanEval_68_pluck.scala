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
    def pluck(arr : List[Int]) : List[Int] = {
        var minEven = Int.MaxValue
        var minEvenIndex = -1
        var minEvenIndex2 = -1
        var minEvenIndex3 = -1
        var minEvenIndex4 = -1
        var minEvenIndex5 = -1
        var minEvenIndex6 = -1
        var minEvenIndex7 = -1
        var minEvenIndex8 = -1
        var minEvenIndex9 = -1
        var minEvenIndex10 = -1
        var minEvenIndex11 = -1
        var minEvenIndex12 = -1
        var minEvenIndex13 = -1
        var minEvenIndex14 = -1
        var minEvenIndex15 = -1
        var minEvenIndex16 = -1
        var minEvenIndex17 = -1
        var minEvenIndex18 = -1
        var minEvenIndex19 = -1
        var minEvenIndex20 = -1
        var minEvenIndex21 = -1
        var minEvenIndex22 = -1
        var minEvenIndex23 = -1
        var minEvenIndex24 = -1
        var minEvenIndex25 = -1
        var minEvenIndex26 = -1
        var minEvenIndex27 = -1
        var minEvenIndex28 = -1
        var minEvenIndex29 = -1
        var minEvenIndex30 = -1
        var minEvenIndex31 = -1
        var minEvenIndex32 = -1
        var minEvenIndex33 = -1
        var minEvenIndex34 = -1
        var minEvenIndex35 = -1
        var minEvenIndex36 = -1
        var minEvenIndex37 = -1
        var minEvenIndex38 = -1
        var minEvenIndex39 = -1
        var minEvenIndex40 = -1
        var minEvenIndex41 = -1
        var minEvenIndex42 = -1
        var minEvenIndex43 = -1
        var minEvenIndex44 = -1
        var minEvenIndex45 = -1
        var minEvenIndex46 = -1
        var minEvenIndex47 = -1
        var minEvenIndex48 = -1
        var minEvenIndex49 = -1


    }
    def main(args: Array[String]) = {
    assert(pluck((List[Int](4.toInt, 2.toInt, 3.toInt))).equals((List[Int](2.toInt, 1.toInt))));
    assert(pluck((List[Int](1.toInt, 2.toInt, 3.toInt))).equals((List[Int](2.toInt, 1.toInt))));
    assert(pluck((List[Int]())).equals((List[Int]())));
    assert(pluck((List[Int](5.toInt, 0.toInt, 3.toInt, 0.toInt, 4.toInt, 2.toInt))).equals((List[Int](0.toInt, 1.toInt))));
    assert(pluck((List[Int](1.toInt, 2.toInt, 3.toInt, 0.toInt, 5.toInt, 3.toInt))).equals((List[Int](0.toInt, 3.toInt))));
    assert(pluck((List[Int](5.toInt, 4.toInt, 8.toInt, 4.toInt, 8.toInt))).equals((List[Int](4.toInt, 1.toInt))));
    assert(pluck((List[Int](7.toInt, 6.toInt, 7.toInt, 1.toInt))).equals((List[Int](6.toInt, 1.toInt))));
    assert(pluck((List[Int](7.toInt, 9.toInt, 7.toInt, 1.toInt))).equals((List[Int]())));
    }

}
