import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    // >>> prime_fib(1)
    // 2
    // >>> prime_fib(2)
    // 3
    // >>> prime_fib(3)
    // 5
    // >>> prime_fib(4)
    // 13
    // >>> prime_fib(5)
    // 89
    public static long prime_fib(long n) {
        if (n <= 0) {
            return getDefaultValue(Long.class);
        }
        if (n == 1) {
            return 2;
        }
        if (n == 2) {
            return 3;
        }
        long fib = 2;
        long prev = 1;
        long temp = 0;
        for (int i = 3; i <= n; i++) {
            temp = fib;
            fib += prev;
            prev = temp;
        }
        return fib;
    }
    // >>> is_prime(2)
    // True
    // >>> is_prime(3)
    // True
    // >>> is_prime(4)
    // False
    // >>> is_prime(5)
    // True
    // >>> is_prime(6)
    // False
    // >>> is_prime(7)
    // True
    // >>> is_prime(8)
    // False
    // >>> is_prime(9)
    // False
    // >>> is_prime(10)
    // False
    // >>> is_prime(11)
    // True
    public static boolean is_prime(long n) {
        if (n <= 1) {
            return getDefaultValue(Boolean.class);
        }
        if (n == 2) {
            return true;
        }
        if (n % 2 == 0) {
            return false;
        }
        for (long i = 3; i * i <= n; i += 2) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
    // >>> is_prime_fib(1)
    // False
    // >>> is_prime_fib(2)
    // True
    // >>> is_prime_fib(3)
    // False
    // >>> is_prime_fib(4)
    // False
    // >>> is_prime_fib(5)
    // True
    // >>> is_prime_fib(6)
    // False
    // >>> is_prime_fib(7

    }
    public static void main(String[] args) {
    assert(prime_fib((1l)) == (2l));
    assert(prime_fib((2l)) == (3l));
    assert(prime_fib((3l)) == (5l));
    assert(prime_fib((4l)) == (13l));
    assert(prime_fib((5l)) == (89l));
    assert(prime_fib((6l)) == (233l));
    assert(prime_fib((7l)) == (1597l));
    assert(prime_fib((8l)) == (28657l));
    assert(prime_fib((9l)) == (514229l));
    assert(prime_fib((10l)) == (433494437l));
    }

}
