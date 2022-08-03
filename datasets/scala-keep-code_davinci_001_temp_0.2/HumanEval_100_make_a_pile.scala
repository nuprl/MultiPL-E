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
    def makeAPile(n : Long) : List[Long] = {
        var pile = List[Long]()
        var i = n
        while (i > 0) {
            pile = i :: pile
            i = if (i % 2 == 0) i + 1 else i + 2
        }
        pile

    }
    def main(args: Array[String]) = {
    assert(makeAPile((3l)).equals((List[Long](3l.toLong, 5l.toLong, 7l.toLong))));
    assert(makeAPile((4l)).equals((List[Long](4l.toLong, 6l.toLong, 8l.toLong, 10l.toLong))));
    assert(makeAPile((5l)).equals((List[Long](5l.toLong, 7l.toLong, 9l.toLong, 11l.toLong, 13l.toLong))));
    assert(makeAPile((6l)).equals((List[Long](6l.toLong, 8l.toLong, 10l.toLong, 12l.toLong, 14l.toLong, 16l.toLong))));
    assert(makeAPile((8l)).equals((List[Long](8l.toLong, 10l.toLong, 12l.toLong, 14l.toLong, 16l.toLong, 18l.toLong, 20l.toLong, 22l.toLong))));
    }

}
