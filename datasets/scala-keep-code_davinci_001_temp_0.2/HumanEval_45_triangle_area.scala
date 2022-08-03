import scala.math._
import scala.collection.mutable._
object Problem {
    // Given length of a side and high return area for a triangle.
    // >>> triangle_area(5, 3)
    // 7.5
    def triangleArea(a : Long, h : Long) : Float = {
        return 0.5 * a * h

    }
    def main(args: Array[String]) = {
    assert(triangleArea((5l), (3l)) == (7.5f));
    assert(triangleArea((2l), (2l)) == (2.0f));
    assert(triangleArea((10l), (8l)) == (40.0f));
    }

}
