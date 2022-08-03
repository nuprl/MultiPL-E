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
    def eat(number : Int, need : Int, remaining : Int) : List[Int] = {
        var eaten = number + remaining
        var remaining_after = remaining - need
        if (remaining_after < 0) {
            eaten = eaten + remaining_after
            remaining_after = 0
        }
        return List(eaten, remaining_after)

    }
    def main(args: Array[String]) = {
    assert(eat((5), (6), (10)).equals((List[Int](11.toInt, 4.toInt))));
    assert(eat((4), (8), (9)).equals((List[Int](12.toInt, 1.toInt))));
    assert(eat((1), (10), (10)).equals((List[Int](11.toInt, 0.toInt))));
    assert(eat((2), (11), (5)).equals((List[Int](7.toInt, 0.toInt))));
    assert(eat((4), (5), (7)).equals((List[Int](9.toInt, 2.toInt))));
    assert(eat((4), (5), (1)).equals((List[Int](5.toInt, 0.toInt))));
    }

}
