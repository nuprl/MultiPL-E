import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static long add(long x, long y) {
        return x + y;
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static int add(int x, int y) {
        return x + y;
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static float add(float x, float y) {
        return x + y;
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static double add(double x, double y) {
        return x + y;
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static BigDecimal add(BigDecimal x, BigDecimal y) {
        return x.add(y);
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static BigInteger add(BigInteger x, BigInteger y) {
        return x.add(y);
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static long add(long x, long y, long z) {
        return x + y + z;
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public static int add(int x, int y, int z) {
        return x + y + z;
    }
    // Add two numbers x and y
    // >>> add(2, 3)
    // 5
    // >>> add(5, 7)
    // 12
    public

    }
    public static void main(String[] args) {
    assert(add((0l), (1l)) == (1l));
    assert(add((1l), (0l)) == (1l));
    assert(add((2l), (3l)) == (5l));
    assert(add((5l), (7l)) == (12l));
    assert(add((7l), (5l)) == (12l));
    }

}
