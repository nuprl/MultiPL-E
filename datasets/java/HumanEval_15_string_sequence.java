import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return a string containing space-delimited numbers starting from 0 upto n inclusive.
    // >>> string_sequence(0)
    // '0'
    // >>> string_sequence(5)
    // '0 1 2 3 4 5'
    public static String string_sequence(long n) {
        StringBuilder sb = new StringBuilder();
        for (long i = 0; i <= n; i++) {
            sb.append(i).append(" ");
        }
        return sb.toString();
    }
    // Return a string containing space-delimited numbers starting from 1 upto n inclusive.
    // >>> string_sequence(0)
    // ''
    // >>> string_sequence(5)
    // '1 2 3 4 5'
    public static String string_sequence_1(long n) {
        StringBuilder sb = new StringBuilder();
        for (long i = 1; i <= n; i++) {
            sb.append(i).append(" ");
        }
        return sb.toString();
    }
    // Return a string containing space-delimited numbers starting from m upto n inclusive.
    // >>> string_sequence(0, 0)
    // ''
    // >>> string_sequence(5, 0)
    // ''
    // >>> string_sequence(5, 6)
    // ''
    // >>> string_sequence(5, 5)
    // '5'
    // >>> string_sequence(5, 4)
    // '5 4'
    // >>> string_sequence(5, 3)
    // '5 4 3'
    // >>> string_sequence(5, 2)
    // '5 4 3 2'
    // >>> string_sequence(5, 1)
    // '5 4 3 2 1'
    // >>> string_sequence(5, 0)
    // '5 4 3 2 1 0'
    public static String string_sequence(long m, long n) {
        StringBuilder sb = new StringBuilder();
        for (long i = m; i <= n; i++) {
            sb.append(i).append(" ");
        }
        return sb.toString();
    }
    // Return a string containing space-delimited numbers starting from m upto n inclusive.
    // >>> string_sequence(0, 0)
    // ''
    // >>> string_sequence(5, 0)
    // ''
    // >>>

    }
    public static void main(String[] args) {
    string_sequence((0l)).equals(("0"));
    string_sequence((3l)).equals(("0 1 2 3"));
    string_sequence((10l)).equals(("0 1 2 3 4 5 6 7 8 9 10"));
    }

}
