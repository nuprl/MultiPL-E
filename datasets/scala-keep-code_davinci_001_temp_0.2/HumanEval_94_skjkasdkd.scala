import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a list of integers.
    // You need to find the largest prime value and return the sum of its digits.
    // Examples:
    // For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
    // For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
    // For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
    // For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
    // For lst = [0,81,12,3,1,21] the output should be 3
    // For lst = [0,8,1,2,1,7] the output should be 7
    def skjkasdkd(lst : List[Int]) : Int = {
        var max = 0
        var sum = 0
        for (i <- lst) {
            if (i > max) {
                max = i
            }
        }
        for (i <- lst) {
            if (i == max) {
                sum += i
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(skjkasdkd((List[Int](0.toInt, 3.toInt, 2.toInt, 1.toInt, 3.toInt, 5.toInt, 7.toInt, 4.toInt, 5.toInt, 5.toInt, 5.toInt, 2.toInt, 181.toInt, 32.toInt, 4.toInt, 32.toInt, 3.toInt, 2.toInt, 32.toInt, 324.toInt, 4.toInt, 3.toInt))) == (10));
    assert(skjkasdkd((List[Int](1.toInt, 0.toInt, 1.toInt, 8.toInt, 2.toInt, 4597.toInt, 2.toInt, 1.toInt, 3.toInt, 40.toInt, 1.toInt, 2.toInt, 1.toInt, 2.toInt, 4.toInt, 2.toInt, 5.toInt, 1.toInt))) == (25));
    assert(skjkasdkd((List[Int](1.toInt, 3.toInt, 1.toInt, 32.toInt, 5107.toInt, 34.toInt, 83278.toInt, 109.toInt, 163.toInt, 23.toInt, 2323.toInt, 32.toInt, 30.toInt, 1.toInt, 9.toInt, 3.toInt))) == (13));
    assert(skjkasdkd((List[Int](0.toInt, 724.toInt, 32.toInt, 71.toInt, 99.toInt, 32.toInt, 6.toInt, 0.toInt, 5.toInt, 91.toInt, 83.toInt, 0.toInt, 5.toInt, 6.toInt))) == (11));
    assert(skjkasdkd((List[Int](0.toInt, 81.toInt, 12.toInt, 3.toInt, 1.toInt, 21.toInt))) == (3));
    assert(skjkasdkd((List[Int](0.toInt, 8.toInt, 1.toInt, 2.toInt, 1.toInt, 7.toInt))) == (7));
    assert(skjkasdkd((List[Int](8191.toInt))) == (19));
    assert(skjkasdkd((List[Int](8191.toInt, 123456.toInt, 127.toInt, 7.toInt))) == (19));
    assert(skjkasdkd((List[Int](127.toInt, 97.toInt, 8192.toInt))) == (10));
    }

}
