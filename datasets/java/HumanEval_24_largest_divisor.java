import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    public static long largest_divisor(long n) {
        for (long i = n - 1; i > 0; i--) {
            if (n % i == 0) {
                return i;
            }
        }
        return n;
    }
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    public static int largest_divisor(int n) {
        for (int i = n - 1; i > 0; i--) {
            if (n % i == 0) {
                return i;
            }
        }
        return n;
    }
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    public static long largest_divisor(long n) {
        for (long i = n - 1; i > 0; i--) {
            if (n % i == 0) {
                return i;
            }
        }
        return n;
    }
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    public static int largest_divisor(int n) {
        for (int i = n - 1; i > 0; i--) {
            if (n % i == 0) {
                return i;
            }
        }
        return n;
    }
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    public static long largest_divisor(long n) {
        for (long i = n - 1; i > 0; i--) {
            if (n % i == 0) {
                return i;
            }
        }
        return n;
    }
    // For a given number n, find the largest number that divides n evenly, smaller than n
    // >>> largest_divisor(15)
    // 5
    public static int largest_divisor

    }
    public static void main(String[] args) {
    assert(largest_divisor((3l)) == (1l));
    assert(largest_divisor((7l)) == (1l));
    assert(largest_divisor((10l)) == (5l));
    assert(largest_divisor((100l)) == (50l));
    assert(largest_divisor((49l)) == (7l));
    }

}
