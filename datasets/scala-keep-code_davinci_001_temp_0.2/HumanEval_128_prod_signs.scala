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
    def prodSigns(arr : List[Int]) : Option[Int] = {
        if (arr.isEmpty) None
        else Some(arr.map(x => abs(x)).reduce(_ * _) * arr.reduce(_ * _))

    }
    def main(args: Array[String]) = {
    assert(prodSigns((List[Int](1.toInt, 2.toInt, 2.toInt, -4.toInt))).equals(-9));
    assert(prodSigns((List[Int](0.toInt, 1.toInt))).equals(0));
    assert(prodSigns((List[Int](1.toInt, 1.toInt, 1.toInt, 2.toInt, 3.toInt, -1.toInt, 1.toInt))).equals(-10));
    assert(prodSigns((List[Int]())).equals(None));
    assert(prodSigns((List[Int](2.toInt, 4.toInt, 1.toInt, 2.toInt, -1.toInt, -1.toInt, 9.toInt))).equals(20));
    assert(prodSigns((List[Int](-1.toInt, 1.toInt, -1.toInt, 1.toInt))).equals(4));
    assert(prodSigns((List[Int](-1.toInt, 1.toInt, 1.toInt, 1.toInt))).equals(-4));
    assert(prodSigns((List[Int](-1.toInt, 1.toInt, 1.toInt, 0.toInt))).equals(0));
    }

}
