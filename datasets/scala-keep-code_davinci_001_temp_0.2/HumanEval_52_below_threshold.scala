import scala.math._
import scala.collection.mutable._
object Problem {
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    def belowThreshold(l : List[Int], t : Int) : Boolean = {
        l.forall(_ < t)

    }
    def main(args: Array[String]) = {
    assert(belowThreshold((List[Int](1.toInt, 2.toInt, 4.toInt, 10.toInt)), (100)) == (true));
    assert(belowThreshold((List[Int](1.toInt, 20.toInt, 4.toInt, 10.toInt)), (5)) == (false));
    assert(belowThreshold((List[Int](1.toInt, 20.toInt, 4.toInt, 10.toInt)), (21)) == (true));
    assert(belowThreshold((List[Int](1.toInt, 20.toInt, 4.toInt, 10.toInt)), (22)) == (true));
    assert(belowThreshold((List[Int](1.toInt, 8.toInt, 4.toInt, 10.toInt)), (11)) == (true));
    assert(belowThreshold((List[Int](1.toInt, 8.toInt, 4.toInt, 10.toInt)), (10)) == (false));
    }

}
