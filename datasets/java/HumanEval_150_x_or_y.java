import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    public static long x_or_y(long n, long x, long y) {
        if (n % 2 == 0) {
            return y;
        } else {
            return x;
        }
    }
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    public static long x_or_y(long n, long x, long y) {
        if (n % 2 == 0) {
            return y;
        } else {
            return x;
        }
    }
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    public static long x_or_y(long n, long x, long y) {
        if (n % 2 == 0) {
            return y;
        } else {
            return x;
        }
    }
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    public static long x_or_y(long n, long x, long y) {
        if (n % 2 == 0) {
            return y;
        } else {
            return x;
        }
    }
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // for x_or_y(7, 34, 12) == 34
    // for x_or_y(15, 8, 5) == 5
    public static long x_or_y(long n, long x,

    }
    public static void main(String[] args) {
    assert(x_or_y((7l), (34l), (12l)) == (34l));
    assert(x_or_y((15l), (8l), (5l)) == (5l));
    assert(x_or_y((3l), (33l), (5212l)) == (33l));
    assert(x_or_y((1259l), (3l), (52l)) == (3l));
    assert(x_or_y((7919l), (-1l), (12l)) == (-1l));
    assert(x_or_y((3609l), (1245l), (583l)) == (583l));
    assert(x_or_y((91l), (56l), (129l)) == (129l));
    assert(x_or_y((6l), (34l), (1234l)) == (1234l));
    assert(x_or_y((1l), (2l), (0l)) == (0l));
    assert(x_or_y((2l), (2l), (0l)) == (2l));
    }

}
