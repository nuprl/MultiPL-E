import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
    // Examples
    // solution([5, 8, 7, 1]) ==> 12
    // solution([3, 3, 3, 3, 3]) ==> 9
    // solution([30, 13, 24, 321]) ==>0
    def solution(lst : List[Long]) : Long = {
        var sum = 0L
        for(i <- 0 until lst.length){
            if(i % 2 == 0 && lst(i) % 2 != 0){
                sum += lst(i)
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(solution((List[Long](5l.toLong, 8l.toLong, 7l.toLong, 1l.toLong))) == (12l));
    assert(solution((List[Long](3l.toLong, 3l.toLong, 3l.toLong, 3l.toLong, 3l.toLong))) == (9l));
    assert(solution((List[Long](30l.toLong, 13l.toLong, 24l.toLong, 321l.toLong))) == (0l));
    assert(solution((List[Long](5l.toLong, 9l.toLong))) == (5l));
    assert(solution((List[Long](2l.toLong, 4l.toLong, 8l.toLong))) == (0l));
    assert(solution((List[Long](30l.toLong, 13l.toLong, 23l.toLong, 32l.toLong))) == (23l));
    assert(solution((List[Long](3l.toLong, 13l.toLong, 2l.toLong, 9l.toLong))) == (3l));
    }

}
