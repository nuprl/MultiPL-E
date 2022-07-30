import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Task
    // Write a function that takes a string as input and returns the sum of the upper characters only'
    // ASCII codes.
    // Examples:
    // digitSum("") => 0
    // digitSum("abAB") => 131
    // digitSum("abcCd") => 67
    // digitSum("helloE") => 69
    // digitSum("woArBld") => 131
    // digitSum("aAaaaXa") => 153
    public static long digitSum(String s) {
        long sum = 0;
        for (char c : s.toCharArray()) {
            if (Character.isUpperCase(c)) {
                sum += c;
            }
        }
        return sum;
    }
    // Task
    // Write a function that takes a string as input and returns the sum of the lower characters only'
    // ASCII codes.
    // Examples:
    // digitSum("") => 0
    // digitSum("abAB") => 97
    // digitSum("abcCd") => 99
    // digitSum("helloE") => 101
    // digitSum("woArBld") => 98
    // digitSum("aAaaaXa") => 97
    public static long digitSum2(String s) {
        long sum = 0;
        for (char c : s.toCharArray()) {
            if (Character.isLowerCase(c)) {
                sum += c;
            }
        }
        return sum;
    }
    // Task
    // Write a function that takes a string as input and returns the sum of the digits only'
    // ASCII codes.
    // Examples:
    // digitSum("") => 0
    // digitSum("abAB") => 0
    // digitSum("abcCd") => 3
    // digitSum("helloE") => 3
    // digitSum("woArBld") => 0
    // digitSum("aAaaaXa") => 0
    public static long digitSum3(String s) {
        long sum = 0;
        for (char c : s.toCharArray()) {
            if (Character.isDigit(c)) {
                sum += c;
            }
        }
        return sum;
    }
    // Task
    // Write a function that takes a string as input and returns the sum of the ASCII codes of all
    // characters.
    // Examples:
    // digitSum("") => 0
    // digitSum("abAB") => 131
    // digitSum("abcCd") => 99
    // digitSum("helloE") => 101
    // digitSum("woArBld") => 98
    // digitSum("

    }
    public static void main(String[] args) {
    assert(digitSum(("")) == (0l));
    assert(digitSum(("abAB")) == (131l));
    assert(digitSum(("abcCd")) == (67l));
    assert(digitSum(("helloE")) == (69l));
    assert(digitSum(("woArBld")) == (131l));
    assert(digitSum(("aAaaaXa")) == (153l));
    assert(digitSum((" How are yOu?")) == (151l));
    assert(digitSum(("You arE Very Smart")) == (327l));
    }

}
