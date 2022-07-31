import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given two positive integers a and b, return the even digits between a
    // and b, in ascending order.
    // For example:
    // generate_integers(2, 8) => [2, 4, 6, 8]
    // generate_integers(8, 2) => [2, 4, 6, 8]
    // generate_integers(10, 14) => []
    public static ArrayList<Long> generate_integers(long a, long b) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (long i = a; i <= b; i++) {
            if (i % 2 == 0) {
                result.add(i);
            }
        }
        return result;
    }
    // Given a string, return a new string where the first and last chars have
    // been exchanged.
    // For example:
    // front_back('code') => 'eodc'
    // front_back('a') => 'a'
    // front_back('ab') => 'ba'
    public static String front_back(String str) {
        if (str.length() <= 1) {
            return str;
        }
        char first = str.charAt(0);
        char last = str.charAt(str.length() - 1);
        return last + str.substring(1, str.length() - 1) + first;
    }
    // Given a string, return a new string where the first and last chars have
    // been exchanged.
    // For example:
    // front_back('code') => 'eodc'
    // front_back('a') => 'a'
    // front_back('ab') => 'ba'
    public static String front_back(String str) {
        if (str.length() <= 1) {
            return str;
        }
        char first = str.charAt(0);
        char last = str.charAt(str.length() - 1);
        return last + str.substring(1, str.length() - 1) + first;
    }
    // Given a string, return a new string where the first and last chars have
    // been exchanged.
    // For example:
    // front_back('code') => 'eodc'
    // front_back('a') => 'a'
    // front_back('ab') => 'ba'
    public static String front_back(String str) {
        if (str.length() <= 1) {
            return str;
        }
        char first = str.charAt(0);
        char

    }
    public static void main(String[] args) {
    generate_integers((2l), (10l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)6l, (long)8l))));
    generate_integers((10l), (2l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)6l, (long)8l))));
    generate_integers((132l), (2l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)6l, (long)8l))));
    generate_integers((17l), (89l)).equals((new ArrayList<Long>(Arrays.asList())));
    }

}
