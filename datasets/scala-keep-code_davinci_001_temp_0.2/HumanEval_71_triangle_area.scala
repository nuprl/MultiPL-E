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
    def triangleArea(a : Int, b : Int, c : Int) : Float = {
        if(a + b > c && a + c > b && b + c > a){
            return round(0.5f * a * b).toFloat
        }
        return -1

    }
    def main(args: Array[String]) = {
    assert(triangleArea((3), (4), (5)) == (6.0f));
    assert(triangleArea((1), (2), (10)) == -1);
    assert(triangleArea((4), (8), (5)) == (8.18f));
    assert(triangleArea((2), (2), (2)) == (1.73f));
    assert(triangleArea((1), (2), (3)) == -1);
    assert(triangleArea((10), (5), (7)) == (16.25f));
    assert(triangleArea((2), (6), (3)) == -1);
    assert(triangleArea((1), (1), (1)) == (0.43f));
    assert(triangleArea((2), (2), (10)) == -1);
    }

}
