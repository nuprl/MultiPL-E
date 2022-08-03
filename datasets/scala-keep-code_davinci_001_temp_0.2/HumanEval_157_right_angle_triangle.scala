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
    def rightAngleTriangle(a : Long, b : Long, c : Long) : Boolean = {
        val s = (a + b + c) / 2
        val area = sqrt(s * (s - a) * (s - b) * (s - c))
        val result = area == c
        result

    }
    def main(args: Array[String]) = {
    assert(rightAngleTriangle((3l), (4l), (5l)) == (true));
    assert(rightAngleTriangle((1l), (2l), (3l)) == (false));
    assert(rightAngleTriangle((10l), (6l), (8l)) == (true));
    assert(rightAngleTriangle((2l), (2l), (2l)) == (false));
    assert(rightAngleTriangle((7l), (24l), (25l)) == (true));
    assert(rightAngleTriangle((10l), (5l), (7l)) == (false));
    assert(rightAngleTriangle((5l), (12l), (13l)) == (true));
    assert(rightAngleTriangle((15l), (8l), (17l)) == (true));
    assert(rightAngleTriangle((48l), (55l), (73l)) == (true));
    assert(rightAngleTriangle((1l), (1l), (1l)) == (false));
    assert(rightAngleTriangle((2l), (2l), (10l)) == (false));
    }

}
