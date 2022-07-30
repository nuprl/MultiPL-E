import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    // >>> flip_case('Hello')
    // 'hELLO'
    public static String flip_case(String string) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < string.length(); i++) {
            char c = string.charAt(i);
            if (Character.isUpperCase(c)) {
                sb.append(Character.toLowerCase(c));
            } else {
                sb.append(Character.toUpperCase(c));
            }
        }
        return sb.toString();
    }
    // Given a string, return a string where for every char in the original, there are two chars.
    // >>> double_char('The')
    // 'TThhee'
    // >>> double_char('AAbb')
    // 'AAAAbbbb'
    // >>> double_char('Hi-There')
    // 'HHii--TThheerree'
    public static String double_char(String string) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < string.length(); i++) {
            sb.append(string.charAt(i));
            sb.append(string.charAt(i));
        }
        return sb.toString();
    }
    // Return the number of times that the string "hi" appears anywhere in the given string.
    // >>> count_hi('abc hi ho')
    // 1
    // >>> count_hi('ABChi hi')
    // 2
    // >>> count_hi('hihi')
    // 2
    public static int count_hi(String string) {
        int count = 0;
        for (int i = 0; i < string.length() - 1; i++) {
            if (string.substring(i, i + 2).equals("hi")) {
                count++;
            }
        }
        return count;
    }
    // Return True if the string "cat" and "dog" appear the same number of times in the given string.
    // >>> cat_dog('catdog')
    // True
    // >>> cat_dog('catcat')
    // False
    // >>> cat_dog('1cat1cadodog

    }
    public static void main(String[] args) {
    flip_case(("")).equals((""));
    flip_case(("Hello!")).equals(("hELLO!"));
    flip_case(("These violent delights have violent ends")).equals(("tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"));
    }

}
