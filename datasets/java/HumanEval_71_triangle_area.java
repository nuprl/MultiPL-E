import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given the lengths of the three sides of a triangle. Return the area of
    // the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
    // Otherwise return -1
    // Three sides make a valid triangle when the sum of any two sides is greater 
    // than the third side.
    // Example:
    // triangle_area(3, 4, 5) == 6.00
    // triangle_area(1, 2, 10) == -1
    public static float triangle_area(long a, long b, long c) {
        if (a <= 0 || b <= 0 || c <= 0) {
            return -1;
        }
        if (a + b <= c || a + c <= b || b + c <= a) {
            return -1;
        }
        double s = (a + b + c) / 2;
        double area = Math.sqrt(s * (s - a) * (s - b) * (s - c));
        return (float) Math.round(area * 100) / 100;
    }
    // Given a string, return a new string made of every other character starting with the first,
    // so "Hello" yields "Hlo".
    // Example:
    // string_bits("Hello") == "Hlo"
    public static String string_bits(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i += 2) {
            sb.append(str.charAt(i));
        }
        return sb.toString();
    }
    // Given a non-empty string like "Code" return a string like "CCoCodCode".
    // Example:
    // string_splosion("Code") == "CCoCodCode"
    public static String string_splosion(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.substring(0, i + 1));
        }
        return sb.toString();
    }
    // Given an array of ints, return the number of 9's in the array.
    // Example:
    // array_count9([1, 2, 9]) == 1
    // array_count9([1, 9, 9]) == 2
    public static int array_count9(int[] nums) {
        int count = 0;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == 9) {
                count++;
            }
        }
        return count;
    }
   

    }
    public static void main(String[] args) {
    assert(triangle_area((3l), (4l), (5l)) == (6.0f));
    assert(triangle_area((1l), (2l), (10l)) == (float)-1l);
    assert(triangle_area((4l), (8l), (5l)) == (8.18f));
    assert(triangle_area((2l), (2l), (2l)) == (1.73f));
    assert(triangle_area((1l), (2l), (3l)) == (float)-1l);
    assert(triangle_area((10l), (5l), (7l)) == (16.25f));
    assert(triangle_area((2l), (6l), (3l)) == (float)-1l);
    assert(triangle_area((1l), (1l), (1l)) == (0.43f));
    assert(triangle_area((2l), (2l), (10l)) == (float)-1l);
    }

}
