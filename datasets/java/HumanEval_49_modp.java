import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return 2^n modulo p (be aware of numerics).
    // >>> modp(3, 5)
    // 3
    // >>> modp(1101, 101)
    // 2
    // >>> modp(0, 101)
    // 1
    // >>> modp(3, 11)
    // 8
    // >>> modp(100, 101)
    // 1
    public static long modp(long n, long p) {
        long result = 1;
        while (n > 0) {
            if ((n & 1) == 1) {
                result = (result * 2) % p;
            }
            n >>= 1;
            result = (result * 2) % p;
        }
        return result;
    }
    // Return the sum of the elements of the list.
    // >>> sum([1, 2, 3])
    // 6
    // >>> sum([])
    // 0
    // >>> sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    // 55
    public static int sum(int[] list) {
        int result = 0;
        for (int i = 0; i < list.length; i++) {
            result += list[i];
        }
        return result;
    }
    // Return the sum of the elements of the list.
    // >>> sum([1, 2, 3])
    // 6
    // >>> sum([])
    // 0
    // >>> sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    // 55
    public static long sum(long[] list) {
        long result = 0;
        for (int i = 0; i < list.length; i++) {
            result += list[i];
        }
        return result;
    }
    // Return the sum of the elements of the list.
    // >>> sum([1, 2, 3])
    // 6
    // >>> sum([])
    // 0
    // >>> sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    // 55
    public static double sum(double[] list) {
        double result = 0;
        for (int i = 0; i < list.length; i++) {
            result += list[i];
        }
        return result;
    }
    // Return the sum of the elements of the list.
    // >>> sum([1, 2, 3])
    // 6
    // >>> sum([])
    // 0
    // >>> sum([1, 2

    }
    public static void main(String[] args) {
    assert(modp((3l), (5l)) == (3l));
    assert(modp((1101l), (101l)) == (2l));
    assert(modp((0l), (101l)) == (1l));
    assert(modp((3l), (11l)) == (8l));
    assert(modp((100l), (101l)) == (1l));
    assert(modp((30l), (5l)) == (4l));
    assert(modp((31l), (5l)) == (3l));
    }

}
