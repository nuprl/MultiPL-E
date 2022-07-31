import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Filter an input list of strings only for ones that contain given substring
    // >>> filter_by_substring([], 'a')
    // []
    // >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    // ['abc', 'bacd', 'array']
    public static ArrayList<String> filter_by_substring(ArrayList<String> strings, String substring) {
        ArrayList<String> result = new ArrayList<String>();
        for (String s : strings) {
            if (s.contains(substring)) {
                result.add(s);
            }
        }
        return result;
    }
    // Filter an input list of strings only for ones that contain given substring
    // >>> filter_by_substring([], 'a')
    // []
    // >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    // ['abc', 'bacd', 'array']
    public static ArrayList<String> filter_by_substring(ArrayList<String> strings, String substring) {
        ArrayList<String> result = new ArrayList<String>();
        for (String s : strings) {
            if (s.contains(substring)) {
                result.add(s);
            }
        }
        return result;
    }
    // Filter an input list of strings only for ones that contain given substring
    // >>> filter_by_substring([], 'a')
    // []
    // >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    // ['abc', 'bacd', 'array']
    public static ArrayList<String> filter_by_substring(ArrayList<String> strings, String substring) {
        ArrayList<String> result = new ArrayList<String>();
        for (String s : strings) {
            if (s.contains(substring)) {
                result.add(s);
            }
        }
        return result;
    }
    // Filter an input list of strings only for ones that contain given substring
    // >>> filter_by_substring([], 'a')
    // []
    // >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
    // ['abc', 'bacd', 'array']
    public static ArrayList<String> filter_by_substring(ArrayList<String>

    }
    public static void main(String[] args) {
    filter_by_substring((new ArrayList<String>(Arrays.asList())), ("john")).equals((new ArrayList<String>(Arrays.asList())));
    filter_by_substring((new ArrayList<String>(Arrays.asList((String)"xxx", (String)"asd", (String)"xxy", (String)"john doe", (String)"xxxAAA", (String)"xxx"))), ("xxx")).equals((new ArrayList<String>(Arrays.asList((String)"xxx", (String)"xxxAAA", (String)"xxx"))));
    filter_by_substring((new ArrayList<String>(Arrays.asList((String)"xxx", (String)"asd", (String)"aaaxxy", (String)"john doe", (String)"xxxAAA", (String)"xxx"))), ("xx")).equals((new ArrayList<String>(Arrays.asList((String)"xxx", (String)"aaaxxy", (String)"xxxAAA", (String)"xxx"))));
    filter_by_substring((new ArrayList<String>(Arrays.asList((String)"grunt", (String)"trumpet", (String)"prune", (String)"gruesome"))), ("run")).equals((new ArrayList<String>(Arrays.asList((String)"grunt", (String)"prune"))));
    }

}
