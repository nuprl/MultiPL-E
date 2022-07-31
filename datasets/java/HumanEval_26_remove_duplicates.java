import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // From a list of integers, remove all elements that occur more than once.
    // Keep order of elements left the same as in the input.
    // >>> remove_duplicates([1, 2, 3, 2, 4])
    // [1, 3, 4]
    public static ArrayList<Long> remove_duplicates(ArrayList<Long> numbers) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long number : numbers) {
            if (!result.contains(number)) {
                result.add(number);
            }
        }
        return result;
    }
    // From a list of integers, remove all elements that occur more than once.
    // Keep order of elements left the same as in the input.
    // >>> remove_duplicates([1, 2, 3, 2, 4])
    // [1, 3, 4]
    public static ArrayList<Integer> remove_duplicates(ArrayList<Integer> numbers) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        for (Integer number : numbers) {
            if (!result.contains(number)) {
                result.add(number);
            }
        }
        return result;
    }
    // From a list of integers, remove all elements that occur more than once.
    // Keep order of elements left the same as in the input.
    // >>> remove_duplicates([1, 2, 3, 2, 4])
    // [1, 3, 4]
    public static ArrayList<Double> remove_duplicates(ArrayList<Double> numbers) {
        ArrayList<Double> result = new ArrayList<Double>();
        for (Double number : numbers) {
            if (!result.contains(number)) {
                result.add(number);
            }
        }
        return result;
    }
    // From a list of integers, remove all elements that occur more than once.
    // Keep order of elements left the same as in the input.
    // >>> remove_duplicates([1, 2, 3, 2, 4])
    // [1, 3, 4]
    public static ArrayList<Float> remove_duplicates(ArrayList<Float> numbers) {
        ArrayList<Float> result = new ArrayList<Float>();
        for (Float number : numbers) {
            if (!result.contains(number)) {
                result.add(number);
            }
        }
        return result;
    }
   

    }
    public static void main(String[] args) {
    remove_duplicates((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    remove_duplicates((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l))));
    remove_duplicates((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)2l, (long)4l, (long)3l, (long)5l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)5l))));
    }

}
