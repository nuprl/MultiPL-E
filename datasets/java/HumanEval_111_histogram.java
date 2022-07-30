import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a string representing a space separated lowercase letters, return a dictionary
    // of the letter with the most repetition and containing the corresponding count.
    // If several letters have the same occurrence, return all of them.
    // Example:
    // histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    // histogram('a b b a') == {'a': 2, 'b': 2}
    // histogram('a b c a b') == {'a': 2, 'b': 2}
    // histogram('b b b b a') == {'b': 4}
    // histogram('') == {}
    public static HashMap<String, Long> histogram(String test) {
        HashMap<String, Long> map = new HashMap<>();
        String[] str = test.split(" ");
        for (String s : str) {
            if (map.containsKey(s)) {
                map.put(s, map.get(s) + 1);
            } else {
                map.put(s, 1L);
            }
        }
        return map;
    }
    // Given a string representing a space separated lowercase letters, return a dictionary
    // of the letter with the most repetition and containing the corresponding count.
    // If several letters have the same occurrence, return all of them.
    // Example:
    // histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    // histogram('a b b a') == {'a': 2, 'b': 2}
    // histogram('a b c a b') == {'a': 2, 'b': 2}
    // histogram('b b b b a') == {'b': 4}
    // histogram('') == {}
    public static HashMap<String, Long> histogram2(String test) {
        HashMap<String, Long> map = new HashMap<>();
        String[] str = test.split(" ");
        for (String s : str) {
            if (map.containsKey(s)) {
                map.put(s, map.get(s) + 1);
            } else {
                map.put(s, 1L);
            }
        }
        return map;
    }
    // Given a string representing a space separated lowercase letters, return a dictionary
    // of the letter with the most repetition and containing the corresponding count.
    // If several letters have the same occurrence, return all of them.
    // Example:
    // histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    // histogram('a b b a') == {'a': 2, 'b': 2}
    // histogram('a b c a b') == {'a': 2, 'b':

    }
    public static void main(String[] args) {
    histogram(("a b b a")).equals((new HashMap<String, Long>(Map.of("a", 2l, "b", 2l))));
    histogram(("a b c a b")).equals((new HashMap<String, Long>(Map.of("a", 2l, "b", 2l))));
    histogram(("a b c d g")).equals((new HashMap<String, Long>(Map.of("a", 1l, "b", 1l, "c", 1l, "d", 1l, "g", 1l))));
    histogram(("r t g")).equals((new HashMap<String, Long>(Map.of("r", 1l, "t", 1l, "g", 1l))));
    histogram(("b b b b a")).equals((new HashMap<String, Long>(Map.of("b", 4l))));
    histogram(("r t g")).equals((new HashMap<String, Long>(Map.of("r", 1l, "t", 1l, "g", 1l))));
    histogram(("")).equals((new HashMap<String, Long>()));
    histogram(("a")).equals((new HashMap<String, Long>(Map.of("a", 1l))));
    }

}
