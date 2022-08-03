import scala.math._
import scala.collection.mutable._
object Problem {
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    def belowThreshold(l : List[Long], t : Long) : Boolean = {
        l.foldLeft(true)((a, b) => a && b < t)

    }
    def main(args: Array[String]) = {
    assert(belowThreshold((List[Long](1l.toLong, 2l.toLong, 4l.toLong, 10l.toLong)), (100l)) == (true));
    assert(belowThreshold((List[Long](1l.toLong, 20l.toLong, 4l.toLong, 10l.toLong)), (5l)) == (false));
    assert(belowThreshold((List[Long](1l.toLong, 20l.toLong, 4l.toLong, 10l.toLong)), (21l)) == (true));
    assert(belowThreshold((List[Long](1l.toLong, 20l.toLong, 4l.toLong, 10l.toLong)), (22l)) == (true));
    assert(belowThreshold((List[Long](1l.toLong, 8l.toLong, 4l.toLong, 10l.toLong)), (11l)) == (true));
    assert(belowThreshold((List[Long](1l.toLong, 8l.toLong, 4l.toLong, 10l.toLong)), (10l)) == (false));
    }

}
