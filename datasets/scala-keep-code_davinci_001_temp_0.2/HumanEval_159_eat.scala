import scala.math._
import scala.collection.mutable._
object Problem {
    // You're a hungry rabbit, and you already have eaten a certain number of carrots,
    // but now you need to eat more carrots to complete the day's meals.
    // you should return an array of [ total number of eaten carrots after your meals,
    // the number of carrots left after your meals ]
    // if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
    // Example:
    // * eat(5, 6, 10) -> [11, 4]
    // * eat(4, 8, 9) -> [12, 1]
    // * eat(1, 10, 10) -> [11, 0]
    // * eat(2, 11, 5) -> [7, 0]
    // Variables:
    // @number : integer
    // the number of carrots that you have eaten.
    // @need : integer
    // the number of carrots that you need to eat.
    // @remaining : integer
    // the number of remaining carrots thet exist in stock
    // Constrain:
    // * 0 <= number <= 1000
    // * 0 <= need <= 1000
    // * 0 <= remaining <= 1000
    // Have fun :)
    def eat(number : Long, need : Long, remaining : Long) : List[Long] = {
        var eaten = number + remaining
        if (eaten >= need) {
            eaten -= need
            List(eaten, 0)
        } else {
            List(eaten, remaining - eaten)
        }

    }
    def main(args: Array[String]) = {
    assert(eat((5l), (6l), (10l)).equals((List[Long](11l.toLong, 4l.toLong))));
    assert(eat((4l), (8l), (9l)).equals((List[Long](12l.toLong, 1l.toLong))));
    assert(eat((1l), (10l), (10l)).equals((List[Long](11l.toLong, 0l.toLong))));
    assert(eat((2l), (11l), (5l)).equals((List[Long](7l.toLong, 0l.toLong))));
    assert(eat((4l), (5l), (7l)).equals((List[Long](9l.toLong, 2l.toLong))));
    assert(eat((4l), (5l), (1l)).equals((List[Long](5l.toLong, 0l.toLong))));
    }

}
