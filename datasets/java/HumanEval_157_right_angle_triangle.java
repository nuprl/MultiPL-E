import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given the lengths of the three sides of a triangle. Return True if the three
    // sides form a right-angled triangle, False otherwise.
    // A right-angled triangle is a triangle in which one angle is right angle or 
    // 90 degree.
    // Example:
    // right_angle_triangle(3, 4, 5) == True
    // right_angle_triangle(1, 2, 3) == False
    public static boolean right_angle_triangle(long a, long b, long c) {
        return (a * a + b * b == c * c);
    }
    // Given the lengths of the three sides of a triangle. Return True if the three
    // sides form an equilateral triangle, False otherwise.
    // An equilateral triangle is a triangle in which all three sides are equal.
    // Example:
    // equilateral_triangle(3, 3, 3) == True
    // equilateral_triangle(1, 2, 3) == False
    public static boolean equilateral_triangle(long a, long b, long c) {
        return (a == b && b == c);
    }
    // Given the lengths of the three sides of a triangle. Return True if the three
    // sides form an isosceles triangle, False otherwise.
    // An isosceles triangle is a triangle in which two of the sides are equal.
    // Example:
    // isosceles_triangle(3, 3, 3) == False
    // isosceles_triangle(3, 3, 4) == True
    public static boolean isosceles_triangle(long a, long b, long c) {
        return (a == b || b == c || c == a);
    }
    // Given the lengths of the three sides of a triangle. Return True if the three
    // sides form a scalene triangle, False otherwise.
    // A scalene triangle is a triangle in which all three sides are different.
    // Example:
    // scalene_triangle(3, 4, 5) == True
    // scalene_triangle(3, 3, 3) == False
    public static boolean scalene_triangle(long a, long b, long c) {
        return (a != b && b != c && c != a);
    }
    // Given the lengths of the three sides of a triangle. Return True if the three
    // sides form a right-angled triangle, False otherwise.
    // A right-angled triangle is a triangle in which one angle is right angle or 
    // 90 degree.
    // Example:
    // right_angle_triangle(3, 4, 5) == True
    // right_

    }
    public static void main(String[] args) {
    assert(right_angle_triangle((3l), (4l), (5l)) == (true));
    assert(right_angle_triangle((1l), (2l), (3l)) == (false));
    assert(right_angle_triangle((10l), (6l), (8l)) == (true));
    assert(right_angle_triangle((2l), (2l), (2l)) == (false));
    assert(right_angle_triangle((7l), (24l), (25l)) == (true));
    assert(right_angle_triangle((10l), (5l), (7l)) == (false));
    assert(right_angle_triangle((5l), (12l), (13l)) == (true));
    assert(right_angle_triangle((15l), (8l), (17l)) == (true));
    assert(right_angle_triangle((48l), (55l), (73l)) == (true));
    assert(right_angle_triangle((1l), (1l), (1l)) == (false));
    assert(right_angle_triangle((2l), (2l), (10l)) == (false));
    }

}
