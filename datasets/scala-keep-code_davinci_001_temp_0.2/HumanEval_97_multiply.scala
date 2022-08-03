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
    def multiply(a : Int, b : Int) : Int = {
        var result = 0
        var a_str = a.toString
        var b_str = b.toString
        var a_len = a_str.length
        var b_len = b_str.length
        var a_arr = new Array[Int](a_len)
        var b_arr = new Array[Int](b_len)
        for (i <- 0 until a_len) {
            a_arr(i) = a_str(i).toInt - 48
        }
        for (i <- 0 until b_len) {
            b_arr(i) = b_str(i).toInt - 48
        }
        var carry = 0
        for (i <- 0 until a_len) {
            for (j <- 0 until b_len) {
                result += (a_arr(i) * b_arr(j) + carry) * 10
                carry = (a_arr(i) * b_arr(j) + carry) / 10
            }
        }
        result += carry * 10
        result = result / 10
        return result

    }
    def main(args: Array[String]) = {
    assert(multiply((148), (412)) == (16));
    assert(multiply((19), (28)) == (72));
    assert(multiply((2020), (1851)) == (0));
    assert(multiply((14), (-15)) == (20));
    assert(multiply((76), (67)) == (42));
    assert(multiply((17), (27)) == (49));
    assert(multiply((0), (1)) == (0));
    assert(multiply((0), (0)) == (0));
    }

}
