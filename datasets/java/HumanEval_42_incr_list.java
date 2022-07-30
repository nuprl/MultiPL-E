import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return list with elements incremented by 1.
    // >>> incr_list([1, 2, 3])
    // [2, 3, 4]
    // >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [6, 4, 6, 3, 4, 4, 10, 1, 124]
    public static ArrayList<Long> incr_list(ArrayList<Long> l) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l) {
            result.add(i + 1);
        }
        return result;
    }
    // Return list with elements decremented by 1.
    // >>> decr_list([1, 2, 3])
    // [0, 1, 2]
    // >>> decr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [4, 2, 4, 1, 2, 2, 8, -1, 122]
    public static ArrayList<Long> decr_list(ArrayList<Long> l) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l) {
            result.add(i - 1);
        }
        return result;
    }
    // Return list with elements incremented by 1.
    // >>> incr_list([1, 2, 3])
    // [2, 3, 4]
    // >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [6, 4, 6, 3, 4, 4, 10, 1, 124]
    public static ArrayList<Integer> incr_list(ArrayList<Integer> l) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        for (Integer i : l) {
            result.add(i + 1);
        }
        return result;
    }
    // Return list with elements decremented by 1.
    // >>> decr_list([1, 2, 3])
    // [0, 1, 2]
    // >>> decr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [4, 2, 4, 1, 2, 2, 8, -1, 122]
    public static ArrayList<Integer> decr_list(ArrayList<Integer> l) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        for (Integer i : l) {
            result.add(i

    }
    public static void main(String[] args) {
    incr_list((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    incr_list((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)3l, (long)2l))));
    incr_list((new ArrayList<Long>(Arrays.asList((long)5l, (long)2l, (long)5l, (long)2l, (long)3l, (long)3l, (long)9l, (long)0l, (long)123l)))).equals((new ArrayList<Long>(Arrays.asList((long)6l, (long)3l, (long)6l, (long)3l, (long)4l, (long)4l, (long)10l, (long)1l, (long)124l))));
    }

}
