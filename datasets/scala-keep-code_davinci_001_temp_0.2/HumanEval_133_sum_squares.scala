import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a list of numbers.
    // You need to return the sum of squared numbers in the given list,
    // round each element in the list to the upper int(Ceiling) first.
    // Examples:
    // For lst = [1,2,3] the output should be 14
    // For lst = [1,4,9] the output should be 98
    // For lst = [1,3,5,7] the output should be 84
    // For lst = [1.4,4.2,0] the output should be 29
    // For lst = [-2.4,1,1] the output should be 6
    def sumSquares(lst : List[Float]) : Long = {
        var sum : Long = 0
        for (i <- lst) {
            sum += ceil(i).toLong * ceil(i).toLong
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(sumSquares((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat))) == (14l));
    assert(sumSquares((List[Float](1.0f.toFloat, 2.0f.toFloat, 3.0f.toFloat))) == (14l));
    assert(sumSquares((List[Float](1.0f.toFloat, 3.0f.toFloat, 5.0f.toFloat, 7.0f.toFloat))) == (84l));
    assert(sumSquares((List[Float](1.4f.toFloat, 4.2f.toFloat, 0.0f.toFloat))) == (29l));
    assert(sumSquares((List[Float](-2.4f.toFloat, 1.0f.toFloat, 1.0f.toFloat))) == (6l));
    assert(sumSquares((List[Float](100.0f.toFloat, 1.0f.toFloat, 15.0f.toFloat, 2.0f.toFloat))) == (10230l));
    assert(sumSquares((List[Float](10000.0f.toFloat, 10000.0f.toFloat))) == (200000000l));
    assert(sumSquares((List[Float](-1.4f.toFloat, 4.6f.toFloat, 6.3f.toFloat))) == (75l));
    assert(sumSquares((List[Float](-1.4f.toFloat, 17.9f.toFloat, 18.9f.toFloat, 19.9f.toFloat))) == (1086l));
    assert(sumSquares((List[Float](0.0f.toFloat))) == (0l));
    assert(sumSquares((List[Float](-1.0f.toFloat))) == (1l));
    assert(sumSquares((List[Float](-1.0f.toFloat, 1.0f.toFloat, 0.0f.toFloat))) == (2l));
    }

}
