import scala.math._
import scala.collection.mutable._
object Problem {
    // Return sorted unique common elements for two lists.
    // >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    // [1, 5, 653]
    // >>> common([5, 3, 2, 8], [3, 2])
    // [2, 3]
    def common(l1 : List[Int], l2 : List[Int]) : List[Int] = {
        var l1_s = l1.sorted
        var l2_s = l2.sorted
        var l = List[Int]()
        var i = 0
        var j = 0
        while (i < l1_s.length && j < l2_s.length) {
            if (l1_s(i) == l2_s(j)) {
                l = l1_s(i) :: l
                i += 1
                j += 1
            } else if (l1_s(i) < l2_s(j)) {
                i += 1
            } else {
                j += 1
            }
        }
        l.reverse

    }
    def main(args: Array[String]) = {
    assert(common((List[Int](1.toInt, 4.toInt, 3.toInt, 34.toInt, 653.toInt, 2.toInt, 5.toInt)), (List[Int](5.toInt, 7.toInt, 1.toInt, 5.toInt, 9.toInt, 653.toInt, 121.toInt))).equals((List[Int](1.toInt, 5.toInt, 653.toInt))));
    assert(common((List[Int](5.toInt, 3.toInt, 2.toInt, 8.toInt)), (List[Int](3.toInt, 2.toInt))).equals((List[Int](2.toInt, 3.toInt))));
    assert(common((List[Int](4.toInt, 3.toInt, 2.toInt, 8.toInt)), (List[Int](3.toInt, 2.toInt, 4.toInt))).equals((List[Int](2.toInt, 3.toInt, 4.toInt))));
    assert(common((List[Int](4.toInt, 3.toInt, 2.toInt, 8.toInt)), (List[Int]())).equals((List[Int]())));
    }

}
