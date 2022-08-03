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
    def getRow(lst : List[List[Long]], x : Long) : List[Tuple2[Long, Long]] = {
        return List[Tuple2[Long, Long]]()

    }
    def main(args: Array[String]) = {
    assert(getRow((List[List[Long]](List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 1l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 1l.toLong))), (1l)).equals((List[Tuple2[Long, Long]]((0l, 0l), (1l, 4l), (1l, 0l), (2l, 5l), (2l, 0l)))));
    assert(getRow((List[List[Long]](List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong))), (2l)).equals((List[Tuple2[Long, Long]]((0l, 1l), (1l, 1l), (2l, 1l), (3l, 1l), (4l, 1l), (5l, 1l)))));
    assert(getRow((List[List[Long]](List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 1l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 1l.toLong, 4l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 1l.toLong, 5l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 1l.toLong, 6l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 1l.toLong))), (1l)).equals((List[Tuple2[Long, Long]]((0l, 0l), (1l, 0l), (2l, 1l), (2l, 0l), (3l, 2l), (3l, 0l), (4l, 3l), (4l, 0l), (5l, 4l), (5l, 0l), (6l, 5l), (6l, 0l)))));
    assert(getRow((List[List[Long]]()), (1l)).equals((List[Tuple2[Long, Long]]())));
    assert(getRow((List[List[Long]](List[Long](1l.toLong))), (2l)).equals((List[Tuple2[Long, Long]]())));
    assert(getRow((List[List[Long]](List[Long](), List[Long](1l.toLong), List[Long](1l.toLong, 2l.toLong, 3l.toLong))), (3l)).equals((List[Tuple2[Long, Long]]((2l, 2l)))));
    }

}
