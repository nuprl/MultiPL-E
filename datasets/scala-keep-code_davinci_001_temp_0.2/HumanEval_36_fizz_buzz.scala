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
    def fizzBuzz(n : Long) : Long = {
        var count = 0L
        for (i <- 1L to n) {
            if (i % 11 == 0 || i % 13 == 0) {
                count += 1
            }
        }
        return count

    }
    def main(args: Array[String]) = {
    assert(fizzBuzz((50l)) == (0l));
    assert(fizzBuzz((78l)) == (2l));
    assert(fizzBuzz((79l)) == (3l));
    assert(fizzBuzz((100l)) == (3l));
    assert(fizzBuzz((200l)) == (6l));
    assert(fizzBuzz((4000l)) == (192l));
    assert(fizzBuzz((10000l)) == (639l));
    assert(fizzBuzz((100000l)) == (8026l));
    }

}
