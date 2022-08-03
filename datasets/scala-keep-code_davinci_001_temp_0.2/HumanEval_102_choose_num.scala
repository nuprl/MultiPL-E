import scala.math._
import scala.collection.mutable._
object Problem {
    // This function takes two positive numbers x and y and returns the
    // biggest even integer number that is in the range [x, y] inclusive. If 
    // there's no such number, then the function should return -1.
    // For example:
    // choose_num(12, 15) = 14
    // choose_num(13, 12) = -1
    def chooseNum(x : Int, y : Int) : Int = {
        // IMPLEMENT THIS FUNCTION
        var even = -1
        for (i <- x to y) {
            if (i % 2 == 0) {
                even = i
            }
        }
        even

    }
    def main(args: Array[String]) = {
    assert(chooseNum((12), (15)) == (14));
    assert(chooseNum((13), (12)) == (-1));
    assert(chooseNum((33), (12354)) == (12354));
    assert(chooseNum((5234), (5233)) == (-1));
    assert(chooseNum((6), (29)) == (28));
    assert(chooseNum((27), (10)) == (-1));
    assert(chooseNum((7), (7)) == (-1));
    assert(chooseNum((546), (546)) == (546));
    }

}
