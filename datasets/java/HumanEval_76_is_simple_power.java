import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Your task is to write a function that returns true if a number x is a simple
    // power of n and false in other cases.
    // x is a simple power of n if n**int=x
    // For example:
    // is_simple_power(1, 4) => true
    // is_simple_power(2, 2) => true
    // is_simple_power(8, 2) => true
    // is_simple_power(3, 2) => false
    // is_simple_power(3, 1) => false
    // is_simple_power(5, 3) => false
    public static boolean is_simple_power(long x, long n) {
        return (Math.pow(n, (int) Math.log(x) / Math.log(n)) == x);
    }
    // Your task is to write a function that returns true if a number x is a perfect power of n and false in other cases.
    // x is a perfect power of n if n**int=x and int is the smallest possible
    // For example:
    // is_perfect_power(1, 4) => false
    // is_perfect_power(2, 2) => true
    // is_perfect_power(8, 2) => true
    // is_perfect_power(3, 2) => false
    // is_perfect_power(3, 1) => false
    // is_perfect_power(5, 3) => false
    public static boolean is_perfect_power(long x, long n) {
        int i = 0;
        while (Math.pow(n, i) < x) {
            i++;
        }
        return Math.pow(n, i) == x;
    }
    // Your task is to write a function that returns true if a number x is a prime power and false in other cases.
    // x is a prime power if x is a perfect power of a prime number
    // For example:
    // is_prime_power(1) => false
    // is_prime_power(2) => true
    // is_prime_power(8) => true
    // is_prime_power(3) => true
    // is_prime_power(4) => false
    // is_prime_power(5) => true
    public static boolean is_prime_power(long x) {
        if (x == 1) {
            return false;
        }
        for (long i = 2; i <= x; i++) {
            if (is_perfect_power(x, i)) {
                return true;
            }
        }
        return false;
    }
    // Your task is to write a function that returns true if a number x is a semiprime and false in other cases.
    // x is a semiprime if x is

    }
    public static void main(String[] args) {
    assert(is_simple_power((16l), (2l)) == (true));
    assert(is_simple_power((143214l), (16l)) == (false));
    assert(is_simple_power((4l), (2l)) == (true));
    assert(is_simple_power((9l), (3l)) == (true));
    assert(is_simple_power((16l), (4l)) == (true));
    assert(is_simple_power((24l), (2l)) == (false));
    assert(is_simple_power((128l), (4l)) == (false));
    assert(is_simple_power((12l), (6l)) == (false));
    assert(is_simple_power((1l), (1l)) == (true));
    assert(is_simple_power((1l), (12l)) == (true));
    }

}
