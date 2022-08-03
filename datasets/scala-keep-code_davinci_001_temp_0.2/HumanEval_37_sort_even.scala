import scala.math._
import scala.collection.mutable._
object Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> sort_even([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_even([5, 6, 3, 4])
    // [3, 6, 5, 4]
    def sortEven(l : List[Long]) : List[Long] = {
        val evens = l.zipWithIndex.filter(x => x._2 % 2 == 0).map(x => x._1)
        val odds = l.zipWithIndex.filter(x => x._2 % 2 == 1).map(x => x._1)
        val evens_sorted = evens.sorted
        val odds_sorted = odds.sorted
        val result = evens_sorted.zip(odds_sorted).map(x => x._1)
        return result

    }
    def main(args: Array[String]) = {
    assert(sortEven((List[Long](1l.toLong, 2l.toLong, 3l.toLong))).equals((List[Long](1l.toLong, 2l.toLong, 3l.toLong))));
    assert(sortEven((List[Long](5l.toLong, 3l.toLong, -5l.toLong, 2l.toLong, -3l.toLong, 3l.toLong, 9l.toLong, 0l.toLong, 123l.toLong, 1l.toLong, -10l.toLong))).equals((List[Long](-10l.toLong, 3l.toLong, -5l.toLong, 2l.toLong, -3l.toLong, 3l.toLong, 5l.toLong, 0l.toLong, 9l.toLong, 1l.toLong, 123l.toLong))));
    assert(sortEven((List[Long](5l.toLong, 8l.toLong, -12l.toLong, 4l.toLong, 23l.toLong, 2l.toLong, 3l.toLong, 11l.toLong, 12l.toLong, -10l.toLong))).equals((List[Long](-12l.toLong, 8l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 2l.toLong, 12l.toLong, 11l.toLong, 23l.toLong, -10l.toLong))));
    }

}
