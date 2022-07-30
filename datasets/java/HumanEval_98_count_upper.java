import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a string s, count the number of uppercase vowels in even indices.
    // For example:
    // count_upper('aBCdEf') returns 1
    // count_upper('abcdefg') returns 0
    // count_upper('dBBE') returns 0
    public static long count_upper(String s) {
        long count = 0;
        for (int i = 0; i < s.length(); i += 2) {
            char c = s.charAt(i);
            if (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') {
                count++;
            }
        }
        return count;
    }
    // Given a string s, count the number of uppercase vowels in odd indices.
    // For example:
    // count_upper('aBCdEf') returns 1
    // count_upper('abcdefg') returns 2
    // count_upper('dBBE') returns 2
    public static long count_upper_odd(String s) {
        long count = 0;
        for (int i = 1; i < s.length(); i += 2) {
            char c = s.charAt(i);
            if (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') {
                count++;
            }
        }
        return count;
    }
    // Given a string s, count the number of lowercase vowels in even indices.
    // For example:
    // count_lower('aBCdEf') returns 1
    // count_lower('abcdefg') returns 0
    // count_lower('dBBE') returns 1
    public static long count_lower(String s) {
        long count = 0;
        for (int i = 0; i < s.length(); i += 2) {
            char c = s.charAt(i);
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                count++;
            }
        }
        return count;
    }
    // Given a string s, count the number of lowercase vowels in odd indices.
    // For example:
    // count_lower('aBCdEf') returns 1
    // count_lower('abcdefg') returns 2
    // count_lower('dBBE') returns 2

    }
    public static void main(String[] args) {
    assert(count_upper(("aBCdEf")) == (1l));
    assert(count_upper(("abcdefg")) == (0l));
    assert(count_upper(("dBBE")) == (0l));
    assert(count_upper(("B")) == (0l));
    assert(count_upper(("U")) == (1l));
    assert(count_upper(("")) == (0l));
    assert(count_upper(("EEEE")) == (2l));
    }

}
