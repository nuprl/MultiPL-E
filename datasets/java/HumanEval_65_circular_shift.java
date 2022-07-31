import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Circular shift the digits of the integer x, shift the digits right by shift
    // and return the result as a string.
    // If shift > number of digits, return digits reversed.
    // >>> circular_shift(12, 1)
    // "21"
    // >>> circular_shift(12, 2)
    // "12"
    public static String circular_shift(long x, long shift) {
        String s = Long.toString(x);
        if (shift > s.length()) {
            return s.substring(s.length() - shift) + s.substring(0, s.length() - shift);
        } else {
            return s.substring(s.length() - shift) + s.substring(0, shift);
        }
    }
    // Return the number of digits in the integer x.
    // >>> num_digits(12345)
    // 5
    public static int num_digits(long x) {
        int count = 0;
        while (x > 0) {
            x /= 10;
            count++;
        }
        return count;
    }
    // Return the integer formed by the digits of the string s.
    // >>> int_from_digits("12345")
    // 12345
    public static long int_from_digits(String s) {
        long x = 0;
        for (int i = 0; i < s.length(); i++) {
            x = x * 10 + s.charAt(i) - '0';
        }
        return x;
    }
    // Return the number of digits in the integer x.
    // >>> num_digits(12345)
    // 5
    public static int num_digits(long x) {
        int count = 0;
        while (x > 0) {
            x /= 10;
            count++;
        }
        return count;
    }
    // Return the integer formed by the digits of the string s.
    // >>> int_from_digits("12345")
    // 12345
    public static long int_from_digits(String s) {
        long x = 0;
        for (int i = 0; i < s.length(); i++) {
            x = x * 10 + s.charAt(i) - '0';
        }
        return x;
    }
    // Return the number of digits in the integer x.
    // >>> num_digits(12345)
    // 5
    public static int num_digits(

    }
    public static void main(String[] args) {
    circular_shift((100l), (2l)).equals(("001"));
    circular_shift((12l), (2l)).equals(("12"));
    circular_shift((97l), (8l)).equals(("79"));
    circular_shift((12l), (1l)).equals(("21"));
    circular_shift((11l), (101l)).equals(("11"));
    }

}
