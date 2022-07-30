import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive integer n, return the product of the odd digits.
    // Return 0 if all digits are even.
    // For example:
    // digits(1)  == 1
    // digits(4)  == 0
    // digits(235) == 15
    public static long digits(long n) {
        long result = 1;
        while (n > 0) {
            long digit = n % 10;
            if (digit % 2 == 1) {
                result *= digit;
            }
            n /= 10;
        }
        return result;
    }
    // Given a string, return true if the string is a palindrome.
    // For example:
    // palindrome("racecar") == true
    // palindrome("a") == true
    // palindrome("ab") == false
    public static boolean palindrome(String s) {
        int i = 0;
        int j = s.length() - 1;
        while (i < j) {
            if (s.charAt(i) != s.charAt(j)) {
                return false;
            }
            i++;
            j--;
        }
        return true;
    }
    // Given a string, return true if the string is a palindrome.
    // For example:
    // palindrome("racecar") == true
    // palindrome("a") == true
    // palindrome("ab") == false
    public static boolean palindrome(String s) {
        int i = 0;
        int j = s.length() - 1;
        while (i < j) {
            if (s.charAt(i) != s.charAt(j)) {
                return false;
            }
            i++;
            j--;
        }
        return true;
    }
    // Given a string, return the number of times that the same letter
    // appears consecutively in the string.
    // For example:
    // consecutive("abcc") == 2
    // consecutive("a") == 0
    public static int consecutive(String s) {
        int count = 0;
        for (int i = 0; i < s.length() - 1; i++) {
            if (s.charAt(i) == s.charAt(i + 1)) {
                count++;
            }
        }
        return count;
    }
    // Given a string, return the number of times

    }
    public static void main(String[] args) {
    assert(digits((5l)) == (5l));
    assert(digits((54l)) == (5l));
    assert(digits((120l)) == (1l));
    assert(digits((5014l)) == (5l));
    assert(digits((98765l)) == (315l));
    assert(digits((5576543l)) == (2625l));
    assert(digits((2468l)) == (0l));
    }

}
