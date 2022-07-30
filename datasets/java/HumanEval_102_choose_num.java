import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // This function takes two positive numbers x and y and returns the
    // biggest even integer number that is in the range [x, y] inclusive. If 
    // there's no such number, then the function should return -1.
    // For example:
    // choose_num(12, 15) = 14
    // choose_num(13, 12) = -1
    public static long choose_num(long x, long y) {
        if (x > y) {
            return -1;
        }
        long result = -1;
        for (long i = x; i <= y; i++) {
            if (i % 2 == 0) {
                result = i;
                break;
            }
        }
        return result;
    }
    // This function takes a string and returns the number of digits in it.
    // For example:
    // count_digits("123") = 3
    // count_digits("1") = 1
    public static int count_digits(String s) {
        int result = 0;
        for (int i = 0; i < s.length(); i++) {
            if (Character.isDigit(s.charAt(i))) {
                result++;
            }
        }
        return result;
    }
    // This function takes a string and returns the number of letters in it.
    // For example:
    // count_letters("123") = 0
    // count_letters("abc") = 3
    public static int count_letters(String s) {
        int result = 0;
        for (int i = 0; i < s.length(); i++) {
            if (Character.isLetter(s.charAt(i))) {
                result++;
            }
        }
        return result;
    }
    // This function takes a string and returns the number of words in it.
    // For example:
    // count_words("123") = 0
    // count_words("abc") = 1
    // count_words("abc def") = 2
    public static int count_words(String s) {
        int result = 0;
        for (int i = 0; i < s.length(); i++) {
            if (Character.isWhitespace(s.charAt(i))) {
                result++;
            }
        }
        return result + 1;
    }
    // This function takes a string and returns the number of words in it.
    // For example:
    // count_words("123") = 0
    // count_words("abc") = 1
    // count

    }
    public static void main(String[] args) {
    assert(choose_num((12l), (15l)) == (14l));
    assert(choose_num((13l), (12l)) == (-1l));
    assert(choose_num((33l), (12354l)) == (12354l));
    assert(choose_num((5234l), (5233l)) == (-1l));
    assert(choose_num((6l), (29l)) == (28l));
    assert(choose_num((27l), (10l)) == (-1l));
    assert(choose_num((7l), (7l)) == (-1l));
    assert(choose_num((546l), (546l)) == (546l));
    }

}
