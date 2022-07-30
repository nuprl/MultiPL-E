import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    public static long starts_one_ends(long n) {
        long count = 0;
        for (long i = 1; i <= n; i++) {
            if (i % 10 == 1) {
                count++;
            }
        }
        return count;
    }
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    public static long starts_one_ends(int n) {
        long count = 0;
        for (int i = 1; i <= n; i++) {
            if (i % 10 == 1) {
                count++;
            }
        }
        return count;
    }
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    public static long starts_one_ends(long n) {
        long count = 0;
        for (long i = 1; i <= n; i++) {
            if (i % 10 == 1) {
                count++;
            }
        }
        return count;
    }
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    public static long starts_one_ends(int n) {
        long count = 0;
        for (int i = 1; i <= n; i++) {
            if (i % 10 == 1) {
                count++;
            }
        }
        return count;
    }
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    public static long starts_one_ends(long n) {
        long count = 0;
        for (long i = 1; i <= n; i++) {
            if (i % 10 == 1) {
                count++;
            }
        }
        return count;
    }
    // Given a positive integer n, return the count of the numbers of n-digit
    // positive integers that start or end with 1.
    public static long starts_one_ends(int n) {
        long count = 0;
        for

    }
    public static void main(String[] args) {
    assert(starts_one_ends((1l)) == (1l));
    assert(starts_one_ends((2l)) == (18l));
    assert(starts_one_ends((3l)) == (180l));
    assert(starts_one_ends((4l)) == (1800l));
    assert(starts_one_ends((5l)) == (18000l));
    }

}
