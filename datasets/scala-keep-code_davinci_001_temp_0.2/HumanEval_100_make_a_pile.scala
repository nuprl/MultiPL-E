import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a positive integer n, you have to make a pile of n levels of stones.
    // The first level has n stones.
    // The number of stones in the next level is:
    // - the next odd number if n is odd.
    // - the next even number if n is even.
    // Return the number of stones in each level in a list, where element at index
    // i represents the number of stones in the level (i+1).
    // Examples:
    // >>> make_a_pile(3)
    // [3, 5, 7]
    def makeAPile(n : Int) : List[Int] = {
        var pile : List[Int] = List()
        var i = n
        while (i > 0) {
            pile = pile :+ i
            i = if (i % 2 == 0) i + 1 else i + 2
        }
        pile

    }
    def main(args: Array[String]) = {
    assert(makeAPile((3)).equals((List[Int](3.toInt, 5.toInt, 7.toInt))));
    assert(makeAPile((4)).equals((List[Int](4.toInt, 6.toInt, 8.toInt, 10.toInt))));
    assert(makeAPile((5)).equals((List[Int](5.toInt, 7.toInt, 9.toInt, 11.toInt, 13.toInt))));
    assert(makeAPile((6)).equals((List[Int](6.toInt, 8.toInt, 10.toInt, 12.toInt, 14.toInt, 16.toInt))));
    assert(makeAPile((8)).equals((List[Int](8.toInt, 10.toInt, 12.toInt, 14.toInt, 16.toInt, 18.toInt, 20.toInt, 22.toInt))));
    }

}
