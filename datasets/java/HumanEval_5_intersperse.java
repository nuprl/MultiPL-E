import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    // >>> intersperse([], 4)
    // []
    // >>> intersperse([1, 2, 3], 4)
    // [1, 4, 2, 4, 3]
    public static ArrayList<Long> intersperse(ArrayList<Long> numbers, long delimeter) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (int i = 0; i < numbers.size(); i++) {
            result.add(numbers.get(i));
            if (i != numbers.size() - 1) {
                result.add(delimeter);
            }
        }
        return result;
    }
    public static ArrayList<Long> intersperse(ArrayList<Long> numbers, long delimeter, int start, int end) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (int i = start; i < end; i++) {
            result.add(numbers.get(i));
            if (i != end - 1) {
                result.add(delimeter);
            }
        }
        return result;
    }
    public static ArrayList<Long> intersperse(ArrayList<Long> numbers, long delimeter, int start) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (int i = start; i < numbers.size(); i++) {
            result.add(numbers.get(i));
            if (i != numbers.size() - 1) {
                result.add(delimeter);
            }
        }
        return result;
    }
    public static ArrayList<Long> intersperse(ArrayList<Long> numbers, long delimeter, int start, int end, int step) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (int i = start; i < end; i += step) {
            result.add(numbers.get(i));
            if (i != end - 1) {
                result.add(delimeter);
            }
        }
        return result;
    }
    public static ArrayList<Long> intersperse(ArrayList<Long> numbers, long delimeter, int start, int end, int step, boolean reverse) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (int i = start; i < end; i += step) {
            result.add(numbers

    }
    public static void main(String[] args) {
    intersperse((new ArrayList<Long>(Arrays.asList())), (7l)).equals((new ArrayList<Long>(Arrays.asList())));
    intersperse((new ArrayList<Long>(Arrays.asList((long)5l, (long)6l, (long)3l, (long)2l))), (8l)).equals((new ArrayList<Long>(Arrays.asList((long)5l, (long)8l, (long)6l, (long)8l, (long)3l, (long)8l, (long)2l))));
    intersperse((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l, (long)2l))), (2l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l, (long)2l, (long)2l, (long)2l))));
    }

}
