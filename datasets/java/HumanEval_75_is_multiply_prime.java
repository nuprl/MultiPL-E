import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that returns true if the given number is the multiplication of 3 prime numbers
    // and false otherwise.
    // Knowing that (a) is less then 100. 
    // Example:
    // is_multiply_prime(30) == True
    // 30 = 2 * 3 * 5
    public static boolean is_multiply_prime(long a) {
        boolean result = false;
        for (int i = 2; i < a; i++) {
            for (int j = 2; j < a; j++) {
                for (int k = 2; k < a; k++) {
                    if (i * j * k == a) {
                        result = true;
                    }
                }
            }
        }
        return result;
    }
    // Write a function that returns the number of prime numbers that are less than or equal to a given number.
    // Knowing that (a) is less then 100. 
    // Example:
    // count_prime(30) == 2
    // 30 = 2 * 3 * 5
    public static int count_prime(long a) {
        int count = 0;
        for (int i = 2; i < a; i++) {
            for (int j = 2; j < a; j++) {
                for (int k = 2; k < a; k++) {
                    if (i * j * k == a) {
                        count++;
                    }
                }
            }
        }
        return count;
    }
    // Write a function that returns the number of prime numbers that are less than or equal to a given number.
    // Knowing that (a) is less then 100. 
    // Example:
    // count_prime(30) == 2
    // 30 = 2 * 3 * 5
    public static int count_prime(long a) {
        int count = 0;
        for (int i = 2; i < a; i++) {
            for (int j = 2; j < a; j++) {
                for (int k = 2; k < a; k++) {
                    if (i * j * k == a) {
                        count++;
                    }
                }
            }
        }
        return count;
    }
    // Write a function that returns the number of prime numbers that are less than or equal to a given number.
    // Knowing that (a) is less then 100. 
    // Example:
    // count_prime(30) == 2
    // 30 = 2 * 3 * 5
    public static

    }
    public static void main(String[] args) {
    assert(is_multiply_prime((5l)) == (false));
    assert(is_multiply_prime((30l)) == (true));
    assert(is_multiply_prime((8l)) == (true));
    assert(is_multiply_prime((10l)) == (false));
    assert(is_multiply_prime((125l)) == (true));
    assert(is_multiply_prime((105l)) == (true));
    assert(is_multiply_prime((126l)) == (false));
    assert(is_multiply_prime((729l)) == (false));
    assert(is_multiply_prime((891l)) == (false));
    assert(is_multiply_prime((1001l)) == (true));
    }

}
