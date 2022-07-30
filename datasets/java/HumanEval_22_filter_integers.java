import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Filter given list of any python values only for integers
    // >>> filter_integers(['a', 3.14, 5])
    // [5]
    // >>> filter_integers([1, 2, 3, 'abc', {}, []])
    // [1, 2, 3]
    public static ArrayList<Long> filter_integers(ArrayList<std::any> values) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (std::any value : values) {
            if (value instanceof Long) {
                result.add((Long) value);
            }
        }
        return result;
    }
    // Return the sum of all integers in given list of any python values
    // >>> sum_integers([1, 2, 3, 'abc', {}, []])
    // 6
    // >>> sum_integers([1, 2, 3, 'abc', {}, [], '4'])
    // 6
    public static Long sum_integers(ArrayList<std::any> values) {
        Long result = 0L;
        for (std::any value : values) {
            if (value instanceof Long) {
                result += (Long) value;
            }
        }
        return result;
    }
    // Return the sum of all integers in given list of any python values
    // >>> sum_integers([1, 2, 3, 'abc', {}, []])
    // 6
    // >>> sum_integers([1, 2, 3, 'abc', {}, [], '4'])
    // 6
    public static Long sum_integers(ArrayList<std::any> values, Long defaultValue) {
        Long result = defaultValue;
        for (std::any value : values) {
            if (value instanceof Long) {
                result += (Long) value;
            }
        }
        return result;
    }
    // Return the sum of all integers in given list of any python values
    // >>> sum_integers([1, 2, 3, 'abc', {}, []])
    // 6
    // >>> sum_integers([1, 2, 3, 'abc', {}, [], '4'])
    // 6
    public static Long sum_integers(ArrayList<std::any> values, Long defaultValue, Long defaultValue2) {
        Long result = defaultValue;
        for (std::any value : values) {
            if (value instanceof Long) {
                result += (Long) value;


    }
    public static void main(String[] args) {
    filter_integers((new ArrayList<std::any>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    filter_integers((new ArrayList<std::any>(Arrays.asList((long)4l, (long)new HashMap<Optional.empty(), Optional.empty()>(Map.of()), (long)new ArrayList<std::any>(Arrays.asList()), (long)23.2f, (long)9l, (long)"adasd")))).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)9l))));
    filter_integers((new ArrayList<std::any>(Arrays.asList((long)3l, (long)"c", (long)3l, (long)3l, (long)"a", (long)"b")))).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)3l, (long)3l))));
    }

}
