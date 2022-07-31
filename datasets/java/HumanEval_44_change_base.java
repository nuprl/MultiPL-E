import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Change numerical base of input number x to base.
    // return string representation after the conversion.
    // base numbers are less than 10.
    // >>> change_base(8, 3)
    // '22'
    // >>> change_base(8, 2)
    // '1000'
    // >>> change_base(7, 2)
    // '111'
    public static String change_base(long x, long base) {
        StringBuilder sb = new StringBuilder();
        while (x > 0) {
            sb.append(x % base);
            x /= base;
        }
        return sb.reverse().toString();
    }
    // Return the number of digits in the given number.
    // >>> num_digits(0)
    // 1
    // >>> num_digits(1)
    // 1
    // >>> num_digits(10)
    // 2
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
    // Return the sum of the digits in the given number.
    // >>> sum_digits(0)
    // 0
    // >>> sum_digits(1)
    // 1
    // >>> sum_digits(10)
    // 1
    // >>> sum_digits(12345)
    // 15
    public static int sum_digits(long x) {
        int sum = 0;
        while (x > 0) {
            sum += x % 10;
            x /= 10;
        }
        return sum;
    }
    // Return the number of digits in the given number.
    // >>> num_digits(0)
    // 1
    // >>> num_digits(1)
    // 1
    // >>> num_digits(10)
    // 2
    // >>> num_digits(12345)
    // 5
    public static int num_digits(int x) {
        int count = 0;
        while (x > 0) {
            x /= 10;
            count++;
        }
        return count;
    }
    // Return the sum of the digits in the given number.
    // >>> sum_digits(0)
    // 0
    // >>> sum_digits(1)
    // 1
    // >>> sum_digits(10)
    // 1
    //

    }
    public static void main(String[] args) {
    change_base((8l), (3l)).equals(("22"));
    change_base((9l), (3l)).equals(("100"));
    change_base((234l), (2l)).equals(("11101010"));
    change_base((16l), (2l)).equals(("10000"));
    change_base((8l), (2l)).equals(("1000"));
    change_base((7l), (2l)).equals(("111"));
    change_base((2l), (3l)).equals(("2"));
    change_base((3l), (4l)).equals(("3"));
    change_base((4l), (5l)).equals(("4"));
    change_base((5l), (6l)).equals(("5"));
    change_base((6l), (7l)).equals(("6"));
    change_base((7l), (8l)).equals(("7"));
    }

}
