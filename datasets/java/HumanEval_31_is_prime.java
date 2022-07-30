import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return true if a given number is prime, and false otherwise.
    // >>> is_prime(6)
    // False
    // >>> is_prime(101)
    // True
    // >>> is_prime(11)
    // True
    // >>> is_prime(13441)
    // True
    // >>> is_prime(61)
    // True
    // >>> is_prime(4)
    // False
    // >>> is_prime(1)
    // False
    public static boolean is_prime(long n) {
        if (n <= 1) {
            return false;
        }
        if (n <= 3) {
            return true;
        }
        if (n % 2 == 0 || n % 3 == 0) {
            return false;
        }
        for (int i = 5; i * i <= n; i += 6) {
            if (n % i == 0 || n % (i + 2) == 0) {
                return false;
            }
        }
        return true;
    }
    // Return the sum of all the elements in a given list.
    // >>> sum([1, 2, 3, 4, 5])
    // 15
    // >>> sum([])
    // 0
    // >>> sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    // 55
    // >>> sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
    // 210
    public static int sum(int[] list) {
        int sum = 0;
        for (int i = 0; i < list.length; i++) {
            sum += list[i];
        }
        return sum;
    }
    // Return the sum of all the elements in a given list.
    // >>> sum([1, 2, 3, 4, 5])
    // 15
    // >>> sum([])
    // 0
    // >>> sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    // 55
    // >>> sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
    // 210
    public static int sum(int[] list) {
        int sum = 0;
        for (int i = 0; i < list.length; i++) {
            sum += list[i];
        }
        return sum;
    }
    // Return the sum of all the elements in a given list.
   

    }
    public static void main(String[] args) {
    assert(is_prime((6l)) == (false));
    assert(is_prime((101l)) == (true));
    assert(is_prime((11l)) == (true));
    assert(is_prime((13441l)) == (true));
    assert(is_prime((61l)) == (true));
    assert(is_prime((4l)) == (false));
    assert(is_prime((1l)) == (false));
    assert(is_prime((5l)) == (true));
    assert(is_prime((11l)) == (true));
    assert(is_prime((17l)) == (true));
    assert(is_prime((85l)) == (false));
    assert(is_prime((77l)) == (false));
    assert(is_prime((255379l)) == (false));
    }

}
