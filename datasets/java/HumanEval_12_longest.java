import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Out of list of strings, return the longest one. Return the first one in case of multiple
    // strings of the same length. Return None in case the input list is empty.
    // >>> longest([])
    // >>> longest(['a', 'b', 'c'])
    // 'a'
    // >>> longest(['a', 'bb', 'ccc'])
    // 'ccc'
    public static Optional<String> longest(ArrayList<String> strings) {
        if (strings.isEmpty()) {
            return Optional.empty();
        }
        Optional<String> longest = Optional.of(strings.get(0));
        for (String s : strings) {
            if (s.length() > longest.get().length()) {
                longest = Optional.of(s);
            }
        }
        return longest;
    }
    // Given a list of strings, return a list of tuples containing the first and last characters of each string.
    // >>> first_last(['abcd', 'efghi'])
    // [('a', 'd'), ('e', 'i')]
    // >>> first_last(['a', 'b', 'c'])
    // [('a', 'c')]
    public static ArrayList<Tuple2<Character, Character>> first_last(ArrayList<String> strings) {
        ArrayList<Tuple2<Character, Character>> tuples = new ArrayList<>();
        for (String s : strings) {
            tuples.add(Tuple.of(s.charAt(0), s.charAt(s.length() - 1)));
        }
        return tuples;
    }
    // Given a list of strings, return a list of tuples containing the first and last characters of each string.
    // >>> first_last(['abcd', 'efghi'])
    // [('a', 'd'), ('e', 'i')]
    // >>> first_last(['a', 'b', 'c'])
    // [('a', 'c')]
    public static ArrayList<Tuple2<Character, Character>> first_last(ArrayList<String> strings) {
        ArrayList<Tuple2<Character, Character>> tuples = new ArrayList<>();
        for (String s : strings) {
            tuples.add(Tuple.of(s.charAt(0), s.charAt(s.length() - 1)));
        }
        return tuples;
    }
    // Given a list of strings, return a list of tuples containing the first and last characters of each string.
    //

    }
    public static void main(String[] args) {
    longest((new ArrayList<String>(Arrays.asList()))).equals(Optional.empty());
    longest((new ArrayList<String>(Arrays.asList((String)"x", (String)"y", (String)"z")))).equals(Optional.of("x"));
    longest((new ArrayList<String>(Arrays.asList((String)"x", (String)"yyy", (String)"zzzz", (String)"www", (String)"kkkk", (String)"abc")))).equals(Optional.of("zzzz"));
    }

}
