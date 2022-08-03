import scala.math._
import scala.collection.mutable._
object Problem {
    // Given length of a side and high return area for a triangle.
    // >>> triangle_area(5, 3)
    // 7.5
    def triangleArea(a : Int, h : Int) : Float = {
        return (a * h) / 2

    }
    def main(args: Array[String]) = {
    assert(triangleArea((5), (3)) == (7.5f));
    assert(triangleArea((2), (2)) == (2.0f));
    assert(triangleArea((10), (8)) == (40.0f));
    }

}
