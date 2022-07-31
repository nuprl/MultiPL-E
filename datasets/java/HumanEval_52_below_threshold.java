import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    public static boolean below_threshold(ArrayList<Long> l, long t) {
        // Your code here
        return false;
    }
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    public static boolean below_threshold(ArrayList<Integer> l, int t) {
        // Your code here
        return false;
    }
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    public static boolean below_threshold(ArrayList<Double> l, double t) {
        // Your code here
        return false;
    }
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    public static boolean below_threshold(ArrayList<Float> l, float t) {
        // Your code here
        return false;
    }
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    public static boolean below_threshold(ArrayList<Byte> l, byte t) {
        // Your code here
        return false;
    }
    // Return True if all numbers in the list l are below threshold t.
    // >>> below_threshold([1, 2, 4, 10], 100)
    // True
    // >>> below_threshold([1, 20, 4, 10], 5)
    // False
    public static boolean below_threshold(ArrayList<Short> l, short t) {
        // Your code here
        return false

    }
    public static void main(String[] args) {
    assert(below_threshold((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)4l, (long)10l))), (100l)) == (true));
    assert(below_threshold((new ArrayList<Long>(Arrays.asList((long)1l, (long)20l, (long)4l, (long)10l))), (5l)) == (false));
    assert(below_threshold((new ArrayList<Long>(Arrays.asList((long)1l, (long)20l, (long)4l, (long)10l))), (21l)) == (true));
    assert(below_threshold((new ArrayList<Long>(Arrays.asList((long)1l, (long)20l, (long)4l, (long)10l))), (22l)) == (true));
    assert(below_threshold((new ArrayList<Long>(Arrays.asList((long)1l, (long)8l, (long)4l, (long)10l))), (11l)) == (true));
    assert(below_threshold((new ArrayList<Long>(Arrays.asList((long)1l, (long)8l, (long)4l, (long)10l))), (10l)) == (false));
    }

}
