import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return list of all prefixes from shortest to longest of the input string
    // >>> all_prefixes('abc')
    // ['a', 'ab', 'abc']
    public static ArrayList<String> all_prefixes(String string) {
        ArrayList<String> prefixes = new ArrayList<String>();
        for (int i = 0; i < string.length(); i++) {
            prefixes.add(string.substring(0, i + 1));
        }
        return prefixes;
    }
    // Return list of all suffixes from shortest to longest of the input string
    // >>> all_suffixes('abc')
    // ['c', 'bc', 'abc']
    public static ArrayList<String> all_suffixes(String string) {
        ArrayList<String> suffixes = new ArrayList<String>();
        for (int i = 0; i < string.length(); i++) {
            suffixes.add(string.substring(i, string.length()));
        }
        return suffixes;
    }
    // Return list of all substrings from shortest to longest of the input string
    // >>> all_substrings('abc')
    // ['a', 'ab', 'abc', 'b', 'bc', 'c']
    public static ArrayList<String> all_substrings(String string) {
        ArrayList<String> substrings = new ArrayList<String>();
        for (int i = 0; i < string.length(); i++) {
            for (int j = i; j < string.length(); j++) {
                substrings.add(string.substring(i, j + 1));
            }
        }
        return substrings;
    }
    // Return list of all substrings from shortest to longest of the input string
    // >>> all_substrings('abc')
    // ['a', 'ab', 'abc', 'b', 'bc', 'c']
    public static ArrayList<String> all_substrings(String string, int length) {
        ArrayList<String> substrings = new ArrayList<String>();
        for (int i = 0; i < string.length(); i++) {
            for (int j = i; j < string.length(); j++) {
                if (j - i + 1 == length) {
                    substrings.add(string.substring(i, j + 1));
               

    }
    public static void main(String[] args) {
    all_prefixes(("")).equals((new ArrayList<String>(Arrays.asList())));
    all_prefixes(("asdfgh")).equals((new ArrayList<String>(Arrays.asList((String)"a", (String)"as", (String)"asd", (String)"asdf", (String)"asdfg", (String)"asdfgh"))));
    all_prefixes(("WWW")).equals((new ArrayList<String>(Arrays.asList((String)"W", (String)"WW", (String)"WWW"))));
    }

}
