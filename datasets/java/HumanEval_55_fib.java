import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return n-th Fibonacci number.
    // >>> fib(10)
    // 55
    // >>> fib(1)
    // 1
    // >>> fib(8)
    // 21
    public static long fib(long n) {
        if (n < 2) {
            return n;
        }
        long a = 1;
        long b = 1;
        for (long i = 2; i < n; i++) {
            long c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
    // Return n-th Fibonacci number.
    // >>> fib(10)
    // 55
    // >>> fib(1)
    // 1
    // >>> fib(8)
    // 21
    public static long fib(long n) {
        if (n < 2) {
            return n;
        }
        long a = 1;
        long b = 1;
        for (long i = 2; i < n; i++) {
            long c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
    // Return n-th Fibonacci number.
    // >>> fib(10)
    // 55
    // >>> fib(1)
    // 1
    // >>> fib(8)
    // 21
    public static long fib(long n) {
        if (n < 2) {
            return n;
        }
        long a = 1;
        long b = 1;
        for (long i = 2; i < n; i++) {
            long c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
    // Return n-th Fibonacci number.
    // >>> fib(10)
    // 55
    // >>> fib(1)
    // 1
    // >>> fib(8)
    // 21
    public static long fib(long n) {
        if (n < 2) {
            return n;
        }
        long a = 1;
        long b = 1;
        for (long i = 2; i < n; i++) {
            long c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
    // Return n-th

    }
    public static void main(String[] args) {
    assert(fib((10l)) == (55l));
    assert(fib((1l)) == (1l));
    assert(fib((8l)) == (21l));
    assert(fib((11l)) == (89l));
    assert(fib((12l)) == (144l));
    }

}
