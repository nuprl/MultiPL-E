import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a string, find out how many distinct characters (regardless of case) does it consist of
    // >>> count_distinct_characters('xyzXYZ')
    // 3
    // >>> count_distinct_characters('Jerry')
    // 4
    public static long count_distinct_characters(String string) {
        // Write your code here
        int count = 0;
        for (int i = 0; i < string.length(); i++) {
            if (string.charAt(i) != string.charAt(i + 1)) {
                count++;
            }
        }
        return count;
    

    }
    public static void main(String[] args) {
    assert(count_distinct_characters(("")) == (0l));
    assert(count_distinct_characters(("abcde")) == (5l));
    assert(count_distinct_characters(("abcdecadeCADE")) == (5l));
    assert(count_distinct_characters(("aaaaAAAAaaaa")) == (1l));
    assert(count_distinct_characters(("Jerry jERRY JeRRRY")) == (5l));
    }

}
