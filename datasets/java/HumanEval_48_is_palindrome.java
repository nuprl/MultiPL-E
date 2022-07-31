import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Checks if given string is a palindrome
    // >>> is_palindrome('')
    // True
    // >>> is_palindrome('aba')
    // True
    // >>> is_palindrome('aaaaa')
    // True
    // >>> is_palindrome('zbcd')
    // False
    public static boolean is_palindrome(String text) {
        if (text.length() == 0) {
            return true;
        }
        int start = 0;
        int end = text.length() - 1;
        while (start < end) {
            if (text.charAt(start) != text.charAt(end)) {
                return false;
            }
            start++;
            end--;
        }
        return true;
    }
    // Returns the number of times the given word appears in the given text
    // >>> count_words('', '')
    // 0
    // >>> count_words('a', 'a')
    // 1
    // >>> count_words('a', 'b')
    // 0
    // >>> count_words('a', 'a a')
    // 1
    // >>> count_words('a', 'a b a')
    // 2
    public static int count_words(String word, String text) {
        int count = 0;
        int start = 0;
        while (start < text.length()) {
            int end = text.indexOf(word, start);
            if (end == -1) {
                break;
            }
            count++;
            start = end + word.length();
        }
        return count;
    }
    // Returns the largest number in the given list
    // >>> max([])
    // 0
    // >>> max([1])
    // 1
    // >>> max([1, 2])
    // 2
    // >>> max([1, 2, 3])
    // 3
    public static int max(List<Integer> list) {
        int max = 0;
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i) > max) {
                max = list.get(i);
            }
        }
        return max;
    }
    // Returns the sum of the given list
    // >>> sum([])
    // 0
    // >>> sum([1])
    // 1
    // >>> sum([1, 2])
    // 3
    // >>> sum([1, 2, 3])
    // 6


    }
    public static void main(String[] args) {
    assert(is_palindrome(("")) == (true));
    assert(is_palindrome(("aba")) == (true));
    assert(is_palindrome(("aaaaa")) == (true));
    assert(is_palindrome(("zbcd")) == (false));
    assert(is_palindrome(("xywyx")) == (true));
    assert(is_palindrome(("xywyz")) == (false));
    assert(is_palindrome(("xywzx")) == (false));
    }

}
