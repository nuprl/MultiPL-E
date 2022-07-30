import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return the largest prime factor of n. Assume n > 1 and is not a prime.
    // >>> largest_prime_factor(13195)
    // 29
    // >>> largest_prime_factor(2048)
    // 2
    public static long largest_prime_factor(long n) {
        long i = 2;
        while (i * i <= n) {
            if (n % i == 0) {
                n /= i;
            } else {
                i++;
            }
        }
        return n;
    }
    // Return the largest palindrome that is the product of two n-digit numbers.
    // Assume n >= 2
    // >>> largest_palindrome(2)
    // 9009
    // >>> largest_palindrome(3)
    // 906609
    public static long largest_palindrome(int n) {
        long max = (long) Math.pow(10, n) - 1;
        long min = (long) Math.pow(10, n - 1);
        long largest = 0;
        for (long i = max; i >= min; i--) {
            for (long j = i; j >= min; j--) {
                long product = i * j;
                if (product <= largest) {
                    break;
                }
                if (is_palindrome(product)) {
                    largest = product;
                }
            }
        }
        return largest;
    }
    // Return true if n is a palindrome. Assume n is a non-negative integer.
    // >>> is_palindrome(1234)
    // False
    // >>> is_palindrome(2468642)
    // True
    public static boolean is_palindrome(long n) {
        long reversed = 0;
        long remainder = n;
        while (remainder > 0) {
            reversed = reversed * 10 + remainder % 10;
            remainder /= 10;
        }
        return reversed == n;
    }
    // Return the largest prime factor of n. Assume n > 1 and is not a prime.
    // >>> largest_prime_factor(13195)
    // 29
    // >>> largest_prime_factor(2048)
    // 2
    public static long largest_prime_factor(long n) {
        long i = 2;
        while (i * i <= n) {
            if

    }
    public static void main(String[] args) {
    assert(largest_prime_factor((15l)) == (5l));
    assert(largest_prime_factor((27l)) == (3l));
    assert(largest_prime_factor((63l)) == (7l));
    assert(largest_prime_factor((330l)) == (11l));
    assert(largest_prime_factor((13195l)) == (29l));
    }

}
