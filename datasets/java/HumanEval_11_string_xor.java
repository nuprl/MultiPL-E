import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Input are two strings a and b consisting only of 1s and 0s.
    // Perform binary XOR on these inputs and return result also as a string.
    // >>> string_xor('010', '110')
    // '100'
    public static String string_xor(String a, String b) {
        if (a.length() != b.length()) {
            throw new IllegalArgumentException("Strings must be of equal length");
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < a.length(); i++) {
            sb.append((a.charAt(i) == b.charAt(i)) ? '0' : '1');
        }
        return sb.toString();
    }
    // Input is a string consisting of 1s and 0s.
    // Return the number of consecutive 1s in the input.
    // >>> consecutive_1s('010111')
    // 4
    public static int consecutive_1s(String input) {
        int count = 0;
        for (int i = 0; i < input.length(); i++) {
            if (input.charAt(i) == '1') {
                count++;
            } else {
                break;
            }
        }
        return count;
    }
    // Input is a string consisting of 1s and 0s.
    // Return the number of consecutive 1s in the input.
    // >>> consecutive_1s('010111')
    // 4
    public static int consecutive_1s_2(String input) {
        int count = 0;
        for (int i = 0; i < input.length(); i++) {
            if (input.charAt(i) == '1') {
                count++;
            } else {
                break;
            }
        }
        return count;
    }
    // Input is a string consisting of 1s and 0s.
    // Return the number of consecutive 1s in the input.
    // >>> consecutive_1s('010111')
    // 4
    public static int consecutive_1s_3(String input) {
        int count = 0;
        for (int i = 0; i < input.length(); i++) {
            if (input.charAt(i) == '1') {
                count++;
            } else {
                break;
            }
        }
        return count;
    }
    // Input

    }
    public static void main(String[] args) {
    string_xor(("111000"), ("101010")).equals(("010010"));
    string_xor(("1"), ("1")).equals(("0"));
    string_xor(("0101"), ("0000")).equals(("0101"));
    }

}
