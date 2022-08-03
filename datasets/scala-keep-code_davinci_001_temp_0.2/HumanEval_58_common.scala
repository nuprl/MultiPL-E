import scala.math._
import scala.collection.mutable._
object Problem {
    // Return sorted unique common elements for two lists.
    // >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    // [1, 5, 653]
    // >>> common([5, 3, 2, 8], [3, 2])
    // [2, 3]
    def common(l1 : List[Long], l2 : List[Long]) : List[Long] = {
        val l1_set = l1.toSet
        l2.filter(l1_set.contains(_)).sorted

    }
    def main(args: Array[String]) = {
    assert(common((List[Long](1l.toLong, 4l.toLong, 3l.toLong, 34l.toLong, 653l.toLong, 2l.toLong, 5l.toLong)), (List[Long](5l.toLong, 7l.toLong, 1l.toLong, 5l.toLong, 9l.toLong, 653l.toLong, 121l.toLong))).equals((List[Long](1l.toLong, 5l.toLong, 653l.toLong))));
    assert(common((List[Long](5l.toLong, 3l.toLong, 2l.toLong, 8l.toLong)), (List[Long](3l.toLong, 2l.toLong))).equals((List[Long](2l.toLong, 3l.toLong))));
    assert(common((List[Long](4l.toLong, 3l.toLong, 2l.toLong, 8l.toLong)), (List[Long](3l.toLong, 2l.toLong, 4l.toLong))).equals((List[Long](2l.toLong, 3l.toLong, 4l.toLong))));
    assert(common((List[Long](4l.toLong, 3l.toLong, 2l.toLong, 8l.toLong)), (List[Long]())).equals((List[Long]())));
    }

}
