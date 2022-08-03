import scala.math._
import scala.collection.mutable._
object Problem {
    // From a list of integers, remove all elements that occur more than once.
    // Keep order of elements left the same as in the input.
    // >>> remove_duplicates([1, 2, 3, 2, 4])
    // [1, 3, 4]
    def removeDuplicates(numbers : List[Long]) : List[Long] = {
        var result = List[Long]()
        var seen = Set[Long]()
        for (n <- numbers) {
            if (!seen.contains(n)) {
                result = result :+ n
                seen = seen + n
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(removeDuplicates((List[Long]())).equals((List[Long]())));
    assert(removeDuplicates((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))));
    assert(removeDuplicates((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 2l.toLong, 4l.toLong, 3l.toLong, 5l.toLong))).equals((List[Long](1l.toLong, 4l.toLong, 5l.toLong))));
    }

}
