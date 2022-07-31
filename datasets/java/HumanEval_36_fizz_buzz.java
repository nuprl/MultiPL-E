import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    // >>> fizz_buzz(50)
    // 0
    // >>> fizz_buzz(78)
    // 2
    // >>> fizz_buzz(79)
    // 3
    public static long fizz_buzz(long n) {
        long count = 0;
        for (long i = 1; i < n; i++) {
            if ((i % 11 == 0) || (i % 13 == 0)) {
                count++;
            }
        }
        return count;
    }
    // Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    // >>> fizz_buzz(50)
    // 0
    // >>> fizz_buzz(78)
    // 2
    // >>> fizz_buzz(79)
    // 3
    public static long fizz_buzz(long n) {
        long count = 0;
        for (long i = 1; i < n; i++) {
            if ((i % 11 == 0) || (i % 13 == 0)) {
                count++;
            }
        }
        return count;
    }
    // Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    // >>> fizz_buzz(50)
    // 0
    // >>> fizz_buzz(78)
    // 2
    // >>> fizz_buzz(79)
    // 3
    public static long fizz_buzz(long n) {
        long count = 0;
        for (long i = 1; i < n; i++) {
            if ((i % 11 == 0) || (i % 13 == 0)) {
                count++;
            }
        }
        return count;
    }
    // Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    // >>> fizz_buzz(50)
    // 0
    // >>> fizz_buzz(78)
    // 2
    // >>> fizz_buzz(79)
    // 3
    public static long fizz_buzz(long n) {
        long count = 0;
        for (long i = 1; i < n; i++) {
            if ((i % 11 == 0) || (i % 13 == 0)) {
                count++;
            }
        }


    }
    public static void main(String[] args) {
    assert(fizz_buzz((50l)) == (0l));
    assert(fizz_buzz((78l)) == (2l));
    assert(fizz_buzz((79l)) == (3l));
    assert(fizz_buzz((100l)) == (3l));
    assert(fizz_buzz((200l)) == (6l));
    assert(fizz_buzz((4000l)) == (192l));
    assert(fizz_buzz((10000l)) == (639l));
    assert(fizz_buzz((100000l)) == (8026l));
    }

}
