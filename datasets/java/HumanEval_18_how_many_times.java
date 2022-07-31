import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Find how many times a given substring can be found in the original string. Count overlaping cases.
    // >>> how_many_times('', 'a')
    // 0
    // >>> how_many_times('aaa', 'a')
    // 3
    // >>> how_many_times('aaaa', 'aa')
    // 3
    public static long how_many_times(String string, String substring) {
        if (string == null || substring == null) {
            throw new IllegalArgumentException();
        }
        if (string.length() < substring.length()) {
            return 0;
        }
        int count = 0;
        int index = 0;
        while (index < string.length()) {
            int start = index;
            int end = start + substring.length();
            if (end > string.length()) {
                break;
            }
            if (string.substring(start, end).equals(substring)) {
                count++;
                index = end;
            } else {
                index++;
            }
        }
        return count;
    }
    // Given a string, return the sum of the numbers appearing in the string, ignoring all other characters.
    // A number is a series of 1 or more digit chars in a row. (Note: Character.isDigit(char) tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts a string to an int.)
    // >>> sum_digits('abc123xyz')
    // 123
    // >>> sum_digits('aa11b33')
    // 44
    // >>> sum_digits('7 11')
    // 18
    public static int sum_digits(String string) {
        if (string == null) {
            throw new IllegalArgumentException();
        }
        int sum = 0;
        for (int i = 0; i < string.length(); i++) {
            char c = string.charAt(i);
            if (Character.isDigit(c)) {
                int n = Character.getNumericValue(c);
                sum += n;
            }
        }
        return sum;
    }
    // Given a string, return a string where for every char in the original, there are two chars.
    // >>> double_char('The')
    // 'TThhee'
    // >>> double_char('AAbb')
    // 'AAAAbbbb'
    // >>> double_char('Hi-There')
    // 'HHii--T

    }
    public static void main(String[] args) {
    assert(how_many_times((""), ("x")) == (0l));
    assert(how_many_times(("xyxyxyx"), ("x")) == (4l));
    assert(how_many_times(("cacacacac"), ("cac")) == (4l));
    assert(how_many_times(("john doe"), ("john")) == (1l));
    }

}
