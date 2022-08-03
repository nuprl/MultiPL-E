import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given an array arr of integers and you need to return
    // sum of magnitudes of integers multiplied by product of all signs
    // of each number in the array, represented by 1, -1 or 0.
    // Note: return None for empty arr.
    // Example:
    // >>> prod_signs([1, 2, 2, -4]) == -9
    // >>> prod_signs([0, 1]) == 0
    // >>> prod_signs([]) == None
    def prodSigns(arr : List[Long]) : Option[Long] = {
        if (arr.isEmpty) {
            None
        } else {
            Some(arr.map(x => abs(x)).map(x => if (x > 0) 1 else if (x < 0) -1 else 0).product * arr.map(x => if (x > 0) 1 else if (x < 0) -1 else 0).product)
        }

    }
    def main(args: Array[String]) = {
    assert(prodSigns((List[Long](1l.toLong, 2l.toLong, 2l.toLong, -4l.toLong))).equals(-9l));
    assert(prodSigns((List[Long](0l.toLong, 1l.toLong))).equals(0l));
    assert(prodSigns((List[Long](1l.toLong, 1l.toLong, 1l.toLong, 2l.toLong, 3l.toLong, -1l.toLong, 1l.toLong))).equals(-10l));
    assert(prodSigns((List[Long]())).equals(None));
    assert(prodSigns((List[Long](2l.toLong, 4l.toLong, 1l.toLong, 2l.toLong, -1l.toLong, -1l.toLong, 9l.toLong))).equals(20l));
    assert(prodSigns((List[Long](-1l.toLong, 1l.toLong, -1l.toLong, 1l.toLong))).equals(4l));
    assert(prodSigns((List[Long](-1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))).equals(-4l));
    assert(prodSigns((List[Long](-1l.toLong, 1l.toLong, 1l.toLong, 0l.toLong))).equals(0l));
    }

}
