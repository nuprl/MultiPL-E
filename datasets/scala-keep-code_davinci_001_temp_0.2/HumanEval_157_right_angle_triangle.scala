import scala.math._
import scala.collection.mutable._
object Problem {
    // Given the lengths of the three sides of a triangle. Return True if the three
    // sides form a right-angled triangle, False otherwise.
    // A right-angled triangle is a triangle in which one angle is right angle or 
    // 90 degree.
    // Example:
    // right_angle_triangle(3, 4, 5) == True
    // right_angle_triangle(1, 2, 3) == False
    def rightAngleTriangle(a : Int, b : Int, c : Int) : Boolean = {
        val s = (a + b + c) / 2
        val area = sqrt(s * (s - a) * (s - b) * (s - c))
        val right = area == c
        right

    }
    def main(args: Array[String]) = {
    assert(rightAngleTriangle((3), (4), (5)) == (true));
    assert(rightAngleTriangle((1), (2), (3)) == (false));
    assert(rightAngleTriangle((10), (6), (8)) == (true));
    assert(rightAngleTriangle((2), (2), (2)) == (false));
    assert(rightAngleTriangle((7), (24), (25)) == (true));
    assert(rightAngleTriangle((10), (5), (7)) == (false));
    assert(rightAngleTriangle((5), (12), (13)) == (true));
    assert(rightAngleTriangle((15), (8), (17)) == (true));
    assert(rightAngleTriangle((48), (55), (73)) == (true));
    assert(rightAngleTriangle((1), (1), (1)) == (false));
    assert(rightAngleTriangle((2), (2), (10)) == (false));
    }

}
