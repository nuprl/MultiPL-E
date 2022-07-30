import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Filter an input list of strings only for ones that start with a given prefix.
    // >>> filter_by_prefix([], 'a')
    // []
    // >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
    // ['abc', 'array']
    public static ArrayList<String> filter_by_prefix(ArrayList<String> strings, String prefix) {
        ArrayList<String> result = new ArrayList<String>();
        for (String s : strings) {
            if (s.startsWith(prefix)) {
                result.add(s);
            }
        }
        return result;
    }
    // Given a list of strings, return a list of tuples containing the first and last characters of each string.
    // >>> chars_of_strings(['abc', 'bcd', 'cde'])
    // [('a', 'c'), ('b', 'd'), ('c', 'e')]
    public static ArrayList<Tuple2<Character, Character>> chars_of_strings(ArrayList<String> strings) {
        ArrayList<Tuple2<Character, Character>> result = new ArrayList<Tuple2<Character, Character>>();
        for (String s : strings) {
            result.add(Tuple.with(s.charAt(0), s.charAt(s.length() - 1)));
        }
        return result;
    }
    // Given a list of strings, return a list of tuples containing the first and last characters of each string.
    // >>> chars_of_strings(['abc', 'bcd', 'cde'])
    // [('a', 'c'), ('b', 'd'), ('c', 'e')]
    public static ArrayList<Tuple2<Character, Character>> chars_of_strings(ArrayList<String> strings) {
        ArrayList<Tuple2<Character, Character>> result = new ArrayList<Tuple2<Character, Character>>();
        for (String s : strings) {
            result.add(Tuple.with(s.charAt(0), s.charAt(s.length() - 1)));
        }
        return result;
    }
    // Given a list of strings, return a list of tuples containing the first and last characters of each string.
    // >>> chars_of_strings(['abc', 'bcd', 'cde'])
    // [('a', 'c'), ('b', 'd'), ('c', 'e')]
    public static ArrayList<Tuple2<

    }
    public static void main(String[] args) {
    filter_by_prefix((new ArrayList<String>(Arrays.asList())), ("john")).equals((new ArrayList<String>(Arrays.asList())));
    filter_by_prefix((new ArrayList<String>(Arrays.asList((String)"xxx", (String)"asd", (String)"xxy", (String)"john doe", (String)"xxxAAA", (String)"xxx"))), ("xxx")).equals((new ArrayList<String>(Arrays.asList((String)"xxx", (String)"xxxAAA", (String)"xxx"))));
    }

}
