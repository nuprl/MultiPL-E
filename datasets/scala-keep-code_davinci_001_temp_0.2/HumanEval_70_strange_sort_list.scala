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
    def strangeSortList(lst : List[Int]) : List[Int] = {
        // TODO: Implement me!
        return List()

    }
    def main(args: Array[String]) = {
    assert(strangeSortList((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))).equals((List[Int](1.toInt, 4.toInt, 2.toInt, 3.toInt))));
    assert(strangeSortList((List[Int](5.toInt, 6.toInt, 7.toInt, 8.toInt, 9.toInt))).equals((List[Int](5.toInt, 9.toInt, 6.toInt, 8.toInt, 7.toInt))));
    assert(strangeSortList((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt))).equals((List[Int](1.toInt, 5.toInt, 2.toInt, 4.toInt, 3.toInt))));
    assert(strangeSortList((List[Int](5.toInt, 6.toInt, 7.toInt, 8.toInt, 9.toInt, 1.toInt))).equals((List[Int](1.toInt, 9.toInt, 5.toInt, 8.toInt, 6.toInt, 7.toInt))));
    assert(strangeSortList((List[Int](5.toInt, 5.toInt, 5.toInt, 5.toInt))).equals((List[Int](5.toInt, 5.toInt, 5.toInt, 5.toInt))));
    assert(strangeSortList((List[Int]())).equals((List[Int]())));
    assert(strangeSortList((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt, 7.toInt, 8.toInt))).equals((List[Int](1.toInt, 8.toInt, 2.toInt, 7.toInt, 3.toInt, 6.toInt, 4.toInt, 5.toInt))));
    assert(strangeSortList((List[Int](0.toInt, 2.toInt, 2.toInt, 2.toInt, 5.toInt, 5.toInt, -5.toInt, -5.toInt))).equals((List[Int](-5.toInt, 5.toInt, -5.toInt, 5.toInt, 0.toInt, 2.toInt, 2.toInt, 2.toInt))));
    assert(strangeSortList((List[Int](111111.toInt))).equals((List[Int](111111.toInt))));
    }

}
