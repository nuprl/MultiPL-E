import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Check if two words have the same characters.
    // >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
    // True
    // >>> same_chars('abcd', 'dddddddabc')
    // True
    // >>> same_chars('dddddddabc', 'abcd')
    // True
    // >>> same_chars('eabcd', 'dddddddabc')
    // False
    // >>> same_chars('abcd', 'dddddddabce')
    // False
    // >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
    // False
    public static boolean same_chars(String s0, String s1) {
        if (s0.length() != s1.length()) {
            return false;
        }
        int[] charCounts = new int[128];
        for (int i = 0; i < s0.length(); i++) {
            char c = s0.charAt(i);
            charCounts[c]++;
        }
        for (int i = 0; i < s1.length(); i++) {
            char c = s1.charAt(i);
            charCounts[c]--;
            if (charCounts[c] < 0) {
                return false;
            }
        }
        return true;
    }
    // Return the number of times that the string "code" appears anywhere in the given string,
    // except we'll accept any letter for the 'd', so "cope" and "cooe" count.
    // >>> count_code('aaacodebbb')
    // 1
    // >>> count_code('codexxcode')
    // 2
    // >>> count_code('cozexxcope')
    // 2
    // >>> count_code('cozfxxcope')
    // 1
    // >>> count_code('xxcozeyycop')
    // 1
    // >>> count_code('cozcop')
    // 0
    // >>> count_code('abcxyz')
    // 0
    // >>> count_code('code')
    // 1
    // >>> count_code('ode')
    // 0
    // >>> count_code('c')
    // 0
    // >>> count_code('')
    // 0
    public static int count_code(String s) {
        int count = 0;
        for (int i = 0; i < s.length() - 3; i++) {
            if (s.charAt(i) == 'c' && s.charAt(i + 1) == 'o' && s.charAt(i + 3) == 'e') {
                count++;
            }
        }
        return count;
    }
    // Given two strings, return True if either of the strings appears at

    }
    public static void main(String[] args) {
    assert(same_chars(("eabcdzzzz"), ("dddzzzzzzzddeddabc")) == (true));
    assert(same_chars(("abcd"), ("dddddddabc")) == (true));
    assert(same_chars(("dddddddabc"), ("abcd")) == (true));
    assert(same_chars(("eabcd"), ("dddddddabc")) == (false));
    assert(same_chars(("abcd"), ("dddddddabcf")) == (false));
    assert(same_chars(("eabcdzzzz"), ("dddzzzzzzzddddabc")) == (false));
    assert(same_chars(("aabb"), ("aaccc")) == (false));
    }

}
