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
    def skjkasdkd(lst : List[Long]) : Long = {
        var max = 0L
        for (i <- lst) {
            if (i > max) {
                max = i
            }
        }
        return max

    }
    def main(args: Array[String]) = {
    assert(skjkasdkd((List[Long](0l.toLong, 3l.toLong, 2l.toLong, 1l.toLong, 3l.toLong, 5l.toLong, 7l.toLong, 4l.toLong, 5l.toLong, 5l.toLong, 5l.toLong, 2l.toLong, 181l.toLong, 32l.toLong, 4l.toLong, 32l.toLong, 3l.toLong, 2l.toLong, 32l.toLong, 324l.toLong, 4l.toLong, 3l.toLong))) == (10l));
    assert(skjkasdkd((List[Long](1l.toLong, 0l.toLong, 1l.toLong, 8l.toLong, 2l.toLong, 4597l.toLong, 2l.toLong, 1l.toLong, 3l.toLong, 40l.toLong, 1l.toLong, 2l.toLong, 1l.toLong, 2l.toLong, 4l.toLong, 2l.toLong, 5l.toLong, 1l.toLong))) == (25l));
    assert(skjkasdkd((List[Long](1l.toLong, 3l.toLong, 1l.toLong, 32l.toLong, 5107l.toLong, 34l.toLong, 83278l.toLong, 109l.toLong, 163l.toLong, 23l.toLong, 2323l.toLong, 32l.toLong, 30l.toLong, 1l.toLong, 9l.toLong, 3l.toLong))) == (13l));
    assert(skjkasdkd((List[Long](0l.toLong, 724l.toLong, 32l.toLong, 71l.toLong, 99l.toLong, 32l.toLong, 6l.toLong, 0l.toLong, 5l.toLong, 91l.toLong, 83l.toLong, 0l.toLong, 5l.toLong, 6l.toLong))) == (11l));
    assert(skjkasdkd((List[Long](0l.toLong, 81l.toLong, 12l.toLong, 3l.toLong, 1l.toLong, 21l.toLong))) == (3l));
    assert(skjkasdkd((List[Long](0l.toLong, 8l.toLong, 1l.toLong, 2l.toLong, 1l.toLong, 7l.toLong))) == (7l));
    assert(skjkasdkd((List[Long](8191l.toLong))) == (19l));
    assert(skjkasdkd((List[Long](8191l.toLong, 123456l.toLong, 127l.toLong, 7l.toLong))) == (19l));
    assert(skjkasdkd((List[Long](127l.toLong, 97l.toLong, 8192l.toLong))) == (10l));
    }

}
