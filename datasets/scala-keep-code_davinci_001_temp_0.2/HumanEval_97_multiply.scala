import scala.math._
import scala.collection.mutable._
object Problem {
    // Complete the function that takes two integers and returns 
    // the product of their unit digits.
    // Assume the input is always valid.
    // Examples:
    // multiply(148, 412) should return 16.
    // multiply(19, 28) should return 72.
    // multiply(2020, 1851) should return 0.
    // multiply(14,-15) should return 20.
    def multiply(a : Long, b : Long) : Long = {
        var result = 0L
        var a_ = a
        var b_ = b
        while (a_ > 0) {
            result += b_
            a_ -= 1
        }
        result

    }
    def main(args: Array[String]) = {
    assert(multiply((148l), (412l)) == (16l));
    assert(multiply((19l), (28l)) == (72l));
    assert(multiply((2020l), (1851l)) == (0l));
    assert(multiply((14l), (-15l)) == (20l));
    assert(multiply((76l), (67l)) == (42l));
    assert(multiply((17l), (27l)) == (49l));
    assert(multiply((0l), (1l)) == (0l));
    assert(multiply((0l), (0l)) == (0l));
    }

}
