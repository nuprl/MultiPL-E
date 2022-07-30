import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given length of a side and high return area for a triangle.
    // >>> triangle_area(5, 3)
    // 7.5
    public static float triangle_area(long a, long h) {
        return (float) (a * h) / 2;
    }
    // Given length of a side and high return area for a rectangle.
    // >>> rectangle_area(5, 3)
    // 15
    public static long rectangle_area(long a, long b) {
        return a * b;
    }
    // Given length of a side and high return area for a square.
    // >>> square_area(5, 3)
    // 25
    public static long square_area(long a) {
        return a * a;
    }
    // Given length of a side and high return area for a parallelogram.
    // >>> parallelogram_area(5, 3)
    // 15
    public static long parallelogram_area(long a, long h) {
        return a * h;
    }
    // Given length of a side and high return area for a trapezoid.
    // >>> trapezoid_area(5, 3, 4)
    // 14
    public static long trapezoid_area(long a, long b, long h) {
        return (a + b) * h / 2;
    }
    // Given length of a side and high return area for a kite.
    // >>> kite_area(5, 3)
    // 10.0
    public static float kite_area(long a, long b) {
        return a * b;
    }
    // Given length of a side and high return area for a rhombus.
    // >>> rhombus_area(5, 3)
    // 15
    public static long rhombus_area(long a, long h) {
        return a * h;
    }
    // Given length of a side and high return area for a parallelepiped.
    // >>> parallelepiped_area(5, 3, 4)
    // 60
    public static long parallelepiped_area(long a, long b, long c) {
        return 2 * (a * b + a * c + b * c);
    }
    // Given length of a side and high return area for a cube.
    // >>> cube

    }
    public static void main(String[] args) {
    assert(triangle_area((5l), (3l)) == (7.5f));
    assert(triangle_area((2l), (2l)) == (2.0f));
    assert(triangle_area((10l), (8l)) == (40.0f));
    }

}
