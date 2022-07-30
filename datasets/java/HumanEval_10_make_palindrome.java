import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Find the shortest palindrome that begins with a supplied string.
    // Algorithm idea is simple:
    // - Find the longest postfix of supplied string that is a palindrome.
    // - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    // >>> make_palindrome('')
    // ''
    // >>> make_palindrome('cat')
    // 'catac'
    // >>> make_palindrome('cata')
    // 'catac'
    public static String make_palindrome(String string) {
        if (string.length() == 0) {
            return string;
        }
        int longest_palindrome_length = 0;
        int longest_palindrome_start = 0;
        int longest_palindrome_end = 0;
        for (int i = 0; i < string.length(); i++) {
            int start = i;
            int end = i;
            while (start >= 0 && end < string.length() && string.charAt(start) == string.charAt(end)) {
                start--;
                end++;
            }
            if (end - start - 1 > longest_palindrome_length) {
                longest_palindrome_length = end - start - 1;
                longest_palindrome_start = start + 1;
                longest_palindrome_end = end - 1;
            }
        }
        return string.substring(0, longest_palindrome_start) + string.substring(longest_palindrome_start, longest_palindrome_end + 1).reverse() + string.substring(longest_palindrome_end + 1);
    }
    // Find the shortest palindrome that begins with a supplied string.
    // Algorithm idea is simple:
    // - Find the longest postfix of supplied string that is a palindrome.
    // - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    // >>> make_palindrome('')
    // ''
    // >>> make_palindrome('cat')
    // 'catac'
    // >>> make_palindrome('cata')
    // 'catac'
    public static String make_palindrome_2(String string) {
        if (string.length() == 0) {
            return string;
        }
        int longest_palindrome_length = 0;
        int longest_palindrome_start = 0;
        int longest_palindrome_end = 0;
        for (int i = 0; i < string.length(); i++) {
            int start = i;
            int end =

    }
    public static void main(String[] args) {
    make_palindrome(("")).equals((""));
    make_palindrome(("x")).equals(("x"));
    make_palindrome(("xyz")).equals(("xyzyx"));
    make_palindrome(("xyx")).equals(("xyx"));
    make_palindrome(("jerry")).equals(("jerryrrej"));
    }

}
