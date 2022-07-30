import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return length of given string
    // >>> strlen('')
    // 0
    // >>> strlen('abc')
    // 3
    public static long strlen(String string) {
        if (string == null) {
            return 0;
        }
        return string.length();
    }
    // Return length of given list
    // >>> listlen([])
    // 0
    // >>> listlen([1, 2, 3])
    // 3
    public static long listlen(List<?> list) {
        if (list == null) {
            return 0;
        }
        return list.size();
    }
    // Return length of given tuple
    // >>> tuplelen(Tuple.of(1, 2, 3))
    // 3
    public static long tuplelen(Tuple tuple) {
        if (tuple == null) {
            return 0;
        }
        return tuple.getSize();
    }
    // Return length of given dictionary
    // >>> dictlen({})
    // 0
    // >>> dictlen({'a': 1, 'b': 2, 'c': 3})
    // 3
    public static long dictlen(Map<?, ?> dict) {
        if (dict == null) {
            return 0;
        }
        return dict.size();
    }
    // Return length of given set
    // >>> setlen(set())
    // 0
    // >>> setlen({1, 2, 3})
    // 3
    public static long setlen(Set<?> set) {
        if (set == null) {
            return 0;
        }
        return set.size();
    }
    // Return length of given object
    // >>> objlen(object())
    // 1
    // >>> objlen(object)
    // 1
    public static long objlen(Object obj) {
        if (obj == null) {
            return 0;
        }
        return 1;
    }
    // Return length of given string
    // >>> strlen('')
    // 0
    // >>> strlen('abc')
    // 3
    public static long strlen(String string) {
        if (string == null) {
            return 0;
        }
        return string.length();
    }
    // Return length of given list
    //

    }
    public static void main(String[] args) {
    assert(strlen(("")) == (0l));
    assert(strlen(("x")) == (1l));
    assert(strlen(("asdasnakj")) == (9l));
    }

}
