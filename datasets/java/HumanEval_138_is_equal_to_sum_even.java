import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    // Example
    // is_equal_to_sum_even(4) == False
    // is_equal_to_sum_even(6) == False
    // is_equal_to_sum_even(8) == True
    public static boolean is_equal_to_sum_even(long n) {
        return false;
    }
    // Evaluate whether the given number n can be written as the sum of exactly 3 positive odd numbers
    // Example
    // is_equal_to_sum_odd(3) == True
    // is_equal_to_sum_odd(5) == False
    // is_equal_to_sum_odd(7) == False
    public static boolean is_equal_to_sum_odd(long n) {
        return false;
    }
    // Evaluate whether the given number n can be written as the sum of exactly 3 positive odd numbers
    // Example
    // is_equal_to_sum_odd(3) == True
    // is_equal_to_sum_odd(5) == False
    // is_equal_to_sum_odd(7) == False
    public static boolean is_equal_to_sum_odd(long n) {
        return false;
    }
    // Evaluate whether the given number n can be written as the sum of exactly 4 distinct positive odd numbers
    // Example
    // is_equal_to_sum_distinct_odd(3) == False
    // is_equal_to_sum_distinct_odd(5) == False
    // is_equal_to_sum_distinct_odd(7) == True
    public static boolean is_equal_to_sum_distinct_odd(long n) {
        return false;
    }
    // Evaluate whether the given number n can be written as the sum of exactly 4 positive numbers, regardless of distinctness
    // Example
    // is_equal_to_sum_any_number(3) == True
    // is_equal_to_sum_any_number(5) == True
    // is_equal_to_sum_any_number(7) == True
    public static boolean is_equal_to_sum_any_number(long n) {
        return false;
    }
    // Evaluate whether the given number n can be written as the sum of at most 4 positive numbers, regardless of distinctness
    // Example
    // is_equal_to_sum_at_most_number(3) ==

    }
    public static void main(String[] args) {
    assert(is_equal_to_sum_even((4l)) == (false));
    assert(is_equal_to_sum_even((6l)) == (false));
    assert(is_equal_to_sum_even((8l)) == (true));
    assert(is_equal_to_sum_even((10l)) == (true));
    assert(is_equal_to_sum_even((11l)) == (false));
    assert(is_equal_to_sum_even((12l)) == (true));
    assert(is_equal_to_sum_even((13l)) == (false));
    assert(is_equal_to_sum_even((16l)) == (true));
    }

}
