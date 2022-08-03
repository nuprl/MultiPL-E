import scala.math._
import scala.collection.mutable._
object Problem {
    // Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    // >>> fizz_buzz(50)
    // 0
    // >>> fizz_buzz(78)
    // 2
    // >>> fizz_buzz(79)
    // 3
    def fizzBuzz(n : Int) : Int = {
        var count = 0
        for (i <- 1 until n) {
            if (i % 11 == 0 || i % 13 == 0) {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(fizzBuzz((50)) == (0));
    assert(fizzBuzz((78)) == (2));
    assert(fizzBuzz((79)) == (3));
    assert(fizzBuzz((100)) == (3));
    assert(fizzBuzz((200)) == (6));
    assert(fizzBuzz((4000)) == (192));
    assert(fizzBuzz((10000)) == (639));
    assert(fizzBuzz((100000)) == (8026));
    }

}
