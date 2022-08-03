import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a 2 dimensional data, as a nested lists,
    // which is similar to matrix, however, unlike matrices,
    // each row may contain a different number of columns.
    // Given lst, and integer x, find integers x in the list,
    // and return list of tuples, [(x1, y1), (x2, y2) ...] such that
    // each tuple is a coordinate - (row, columns), starting with 0.
    // Sort coordinates initially by rows in ascending order.
    // Also, sort coordinates of the row by columns in descending order.
    // Examples:
    // get_row([
    // [1,2,3,4,5,6],
    // [1,2,3,4,1,6],
    // [1,2,3,4,5,1]
    // ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
    // get_row([], 1) == []
    // get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
    def getRow(lst : List[List[Int]], x : Int) : List[Tuple2[Int, Int]] = {
        // your code
        return List[Tuple2[Int, Int]]()

    }
    def main(args: Array[String]) = {
    assert(getRow((List[List[Int]](List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 1.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 1.toInt))), (1)).equals((List[Tuple2[Int, Int]]((0, 0), (1, 4), (1, 0), (2, 5), (2, 0)))));
    assert(getRow((List[List[Int]](List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt))), (2)).equals((List[Tuple2[Int, Int]]((0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1)))));
    assert(getRow((List[List[Int]](List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 1.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 1.toInt, 4.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 1.toInt, 5.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 1.toInt, 6.toInt), List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 1.toInt))), (1)).equals((List[Tuple2[Int, Int]]((0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0)))));
    assert(getRow((List[List[Int]]()), (1)).equals((List[Tuple2[Int, Int]]())));
    assert(getRow((List[List[Int]](List[Int](1.toInt))), (2)).equals((List[Tuple2[Int, Int]]())));
    assert(getRow((List[List[Int]](List[Int](), List[Int](1.toInt), List[Int](1.toInt, 2.toInt, 3.toInt))), (3)).equals((List[Tuple2[Int, Int]]((2, 2)))));
    }

}
