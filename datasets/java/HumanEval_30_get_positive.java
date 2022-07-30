import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return only positive numbers in the list.
    // >>> get_positive([-1, 2, -4, 5, 6])
    // [2, 5, 6]
    // >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // [5, 3, 2, 3, 9, 123, 1]
    public static ArrayList<Long> get_positive(ArrayList<Long> l) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l) {
            if (i > 0) {
                result.add(i);
            }
        }
        return result;
    }
    // Return only negative numbers in the list.
    // >>> get_negative([-1, 2, -4, 5, 6])
    // [-1, -4]
    // >>> get_negative([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // [-5, -3, -5, -3, -10]
    public static ArrayList<Long> get_negative(ArrayList<Long> l) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l) {
            if (i < 0) {
                result.add(i);
            }
        }
        return result;
    }
    // Return only positive numbers in the list.
    // >>> get_positive([-1, 2, -4, 5, 6])
    // [2, 5, 6]
    // >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // [5, 3, 2, 3, 9, 123, 1]
    public static ArrayList<Integer> get_positive(ArrayList<Integer> l) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        for (Integer i : l) {
            if (i > 0) {
                result.add(i);
            }
        }
        return result;
    }
    // Return only negative numbers in the list.
    // >>> get_negative([-1, 2, -4, 5, 6])
    // [-1, -4]
    // >>> get_negative([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // [-5, -3, -5, -3, -10]
    public static ArrayList<Integer> get_negative(

    }
    public static void main(String[] args) {
    get_positive((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-2l, (long)4l, (long)5l, (long)6l)))).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)5l, (long)6l))));
    get_positive((new ArrayList<Long>(Arrays.asList((long)5l, (long)3l, (long)-5l, (long)2l, (long)3l, (long)3l, (long)9l, (long)0l, (long)123l, (long)1l, (long)-10l)))).equals((new ArrayList<Long>(Arrays.asList((long)5l, (long)3l, (long)2l, (long)3l, (long)3l, (long)9l, (long)123l, (long)1l))));
    get_positive((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-2l)))).equals((new ArrayList<Long>(Arrays.asList())));
    get_positive((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    }

}
