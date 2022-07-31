import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that takes a string and returns True if the string
    // length is a prime number or False otherwise
    // Examples
    // prime_length('Hello') == True
    // prime_length('abcdcba') == True
    // prime_length('kittens') == True
    // prime_length('orange') == False
    public static boolean prime_length(String string) {
        int len = string.length();
        if (len == 0) {
            return false;
        }
        if (len == 1) {
            return true;
        }
        if (len == 2) {
            return true;
        }
        if (len % 2 == 0) {
            return false;
        }
        for (int i = 3; i < len; i += 2) {
            if (len % i == 0) {
                return false;
            }
        }
        return true;
    }
    // Write a function that takes a string and returns True if the string
    // is a palindrome or False otherwise
    // Examples
    // palindrome('Hello') == False
    // palindrome('abcdcba') == True
    // palindrome('kittens') == False
    // palindrome('orange') == False
    public static boolean palindrome(String string) {
        int len = string.length();
        if (len == 0) {
            return true;
        }
        if (len == 1) {
            return true;
        }
        if (len == 2) {
            return string.charAt(0) == string.charAt(1);
        }
        for (int i = 0; i < len / 2; i++) {
            if (string.charAt(i) != string.charAt(len - i - 1)) {
                return false;
            }
        }
        return true;
    }
    // Write a function that takes a string and returns True if the string
    // is a palindrome or False otherwise
    // Examples
    // palindrome('Hello') == False
    // palindrome('abcdcba') == True
    // palindrome('kittens') == False
    // palindrome('orange') == False
    public static boolean palindrome(String string) {
        int len = string.length();
        if (len == 0) {
            return true;
        }
        if (len == 1) {
            return true;
        }
        if (len == 2) {
            return

    }
    public static void main(String[] args) {
    assert(prime_length(("Hello")) == (true));
    assert(prime_length(("abcdcba")) == (true));
    assert(prime_length(("kittens")) == (true));
    assert(prime_length(("orange")) == (false));
    assert(prime_length(("wow")) == (true));
    assert(prime_length(("world")) == (true));
    assert(prime_length(("MadaM")) == (true));
    assert(prime_length(("Wow")) == (true));
    assert(prime_length(("")) == (false));
    assert(prime_length(("HI")) == (true));
    assert(prime_length(("go")) == (true));
    assert(prime_length(("gogo")) == (false));
    assert(prime_length(("aaaaaaaaaaaaaaa")) == (false));
    assert(prime_length(("Madam")) == (true));
    assert(prime_length(("M")) == (false));
    assert(prime_length(("0")) == (false));
    }

}
