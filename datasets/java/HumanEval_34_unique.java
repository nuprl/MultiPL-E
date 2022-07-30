import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [0, 2, 3, 5, 9, 123]
    public static ArrayList<Long> unique(ArrayList<Long> l) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l) {
            if (!result.contains(i)) {
                result.add(i);
            }
        }
        Collections.sort(result);
        return result;
    }
    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [0, 2, 3, 5, 9, 123]
    public static ArrayList<Integer> unique(ArrayList<Integer> l) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        for (Integer i : l) {
            if (!result.contains(i)) {
                result.add(i);
            }
        }
        Collections.sort(result);
        return result;
    }
    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [0, 2, 3, 5, 9, 123]
    public static ArrayList<String> unique(ArrayList<String> l) {
        ArrayList<String> result = new ArrayList<String>();
        for (String i : l) {
            if (!result.contains(i)) {
                result.add(i);
            }
        }
        Collections.sort(result);
        return result;
    }
    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    // [0, 2, 3, 5, 9, 123]
    public static ArrayList<Double> unique(ArrayList<Double> l) {
        ArrayList<Double> result = new ArrayList<Double>();
        for (Double i : l) {
            if (!result.contains(i)) {
                result.add(i);
            }
        }
        Collections.sort(result);
        return result;
    }
    // Return sorted unique elements in a list
    // >>> unique([5, 3, 5

    }
    public static void main(String[] args) {
    unique((new ArrayList<Long>(Arrays.asList((long)5l, (long)3l, (long)5l, (long)2l, (long)3l, (long)3l, (long)9l, (long)0l, (long)123l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)2l, (long)3l, (long)5l, (long)9l, (long)123l))));
    }

}
