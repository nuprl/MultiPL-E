import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // From a given list of integers, generate a list of rolling maximum element found until given moment
    // in the sequence.
    // >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
    // [1, 2, 3, 3, 3, 4, 4]
    public static ArrayList<Long> rolling_max(ArrayList<Long> numbers) {
        ArrayList<Long> result = new ArrayList<Long>();
        result.add(numbers.get(0));
        for (int i = 1; i < numbers.size(); i++) {
            result.add(Math.max(result.get(i - 1), numbers.get(i)));
        }
        return result;
    }
    // From a given list of integers, generate a list of rolling minimum element found until given moment
    // in the sequence.
    // >>> rolling_min([1, 2, 3, 2, 3, 4, 2])
    // [1, 1, 1, 1, 2, 2, 2]
    public static ArrayList<Long> rolling_min(ArrayList<Long> numbers) {
        ArrayList<Long> result = new ArrayList<Long>();
        result.add(numbers.get(0));
        for (int i = 1; i < numbers.size(); i++) {
            result.add(Math.min(result.get(i - 1), numbers.get(i)));
        }
        return result;
    }
    // From a given list of integers, generate a list of rolling sum element found until given moment
    // in the sequence.
    // >>> rolling_sum([1, 2, 3, 2, 3, 4, 2])
    // [1, 3, 6, 6, 9, 13, 14]
    public static ArrayList<Long> rolling_sum(ArrayList<Long> numbers) {
        ArrayList<Long> result = new ArrayList<Long>();
        result.add(numbers.get(0));
        for (int i = 1; i < numbers.size(); i++) {
            result.add(result.get(i - 1) + numbers.get(i));
        }
        return result;
    }
    // From a given list of integers, generate a list of rolling average element found until given moment
    // in the sequence.
    // >>> rolling_avg([1, 2, 3, 2, 3, 4, 2])
    // [1, 1.5, 2, 2.5, 3, 3.5, 3.5]

    }
    public static void main(String[] args) {
    rolling_max((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    rolling_max((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l))));
    rolling_max((new ArrayList<Long>(Arrays.asList((long)4l, (long)3l, (long)2l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)4l, (long)4l, (long)4l))));
    rolling_max((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)3l, (long)100l, (long)3l)))).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)3l, (long)3l, (long)100l, (long)100l))));
    }

}
