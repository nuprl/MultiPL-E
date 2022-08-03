import scala.math._
import scala.collection.mutable._
object Problem {
    // Given the lengths of the three sides of a triangle. Return the area of
    // the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
    // Otherwise return -1
    // Three sides make a valid triangle when the sum of any two sides is greater 
    // than the third side.
    // Example:
    // triangle_area(3, 4, 5) == 6.00
    // triangle_area(1, 2, 10) == -1
    def triangleArea(a : Long, b : Long, c : Long) : Float = {
        if(a + b > c && a + c > b && b + c > a){
            return round(0.5f * sqrt(a * a + b * b + c * c))
        }
        return -1

    }
    def main(args: Array[String]) = {
    assert(triangleArea((3l), (4l), (5l)) == (6.0f));
    assert(triangleArea((1l), (2l), (10l)) == -1l);
    assert(triangleArea((4l), (8l), (5l)) == (8.18f));
    assert(triangleArea((2l), (2l), (2l)) == (1.73f));
    assert(triangleArea((1l), (2l), (3l)) == -1l);
    assert(triangleArea((10l), (5l), (7l)) == (16.25f));
    assert(triangleArea((2l), (6l), (3l)) == -1l);
    assert(triangleArea((1l), (1l), (1l)) == (0.43f));
    assert(triangleArea((2l), (2l), (10l)) == -1l);
    }

}
