import scala.math._
import scala.collection.mutable._
object Problem {
    // Given list of integers, return list in strange order.
    // Strange sorting, is when you start with the minimum value,
    // then maximum of the remaining integers, then minimum and so on.
    // Examples:
    // strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
    // strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
    // strange_sort_list([]) == []
    def strangeSortList(lst : List[Long]) : List[Long] = {
        // TODO: Implement
        return List[Long]()

    }
    def main(args: Array[String]) = {
    assert(strangeSortList((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals((List[Long](1l.toLong, 4l.toLong, 2l.toLong, 3l.toLong))));
    assert(strangeSortList((List[Long](5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong, 9l.toLong))).equals((List[Long](5l.toLong, 9l.toLong, 6l.toLong, 8l.toLong, 7l.toLong))));
    assert(strangeSortList((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong))).equals((List[Long](1l.toLong, 5l.toLong, 2l.toLong, 4l.toLong, 3l.toLong))));
    assert(strangeSortList((List[Long](5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong, 9l.toLong, 1l.toLong))).equals((List[Long](1l.toLong, 9l.toLong, 5l.toLong, 8l.toLong, 6l.toLong, 7l.toLong))));
    assert(strangeSortList((List[Long](5l.toLong, 5l.toLong, 5l.toLong, 5l.toLong))).equals((List[Long](5l.toLong, 5l.toLong, 5l.toLong, 5l.toLong))));
    assert(strangeSortList((List[Long]())).equals((List[Long]())));
    assert(strangeSortList((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 6l.toLong, 7l.toLong, 8l.toLong))).equals((List[Long](1l.toLong, 8l.toLong, 2l.toLong, 7l.toLong, 3l.toLong, 6l.toLong, 4l.toLong, 5l.toLong))));
    assert(strangeSortList((List[Long](0l.toLong, 2l.toLong, 2l.toLong, 2l.toLong, 5l.toLong, 5l.toLong, -5l.toLong, -5l.toLong))).equals((List[Long](-5l.toLong, 5l.toLong, -5l.toLong, 5l.toLong, 0l.toLong, 2l.toLong, 2l.toLong, 2l.toLong))));
    assert(strangeSortList((List[Long](111111l.toLong))).equals((List[Long](111111l.toLong))));
    }

}
