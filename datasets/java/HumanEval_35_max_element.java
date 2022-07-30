import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return maximum element in the list.
    // >>> max_element([1, 2, 3])
    // 3
    // >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // 123
    public static long max_element(ArrayList<Long> l) {
        long max = Long.MIN_VALUE;
        for (long i : l) {
            if (i > max) {
                max = i;
            }
        }
        return max;
    }
    // Return the sum of all elements in the list.
    // >>> sum_elements([1, 2, 3])
    // 6
    // >>> sum_elements([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // 125
    public static long sum_elements(ArrayList<Long> l) {
        long sum = 0;
        for (long i : l) {
            sum += i;
        }
        return sum;
    }
    // Return the number of elements in the list.
    // >>> number_of_elements([1, 2, 3])
    // 3
    // >>> number_of_elements([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // 11
    public static long number_of_elements(ArrayList<Long> l) {
        return l.size();
    }
    // Return the average of all elements in the list.
    // >>> average_elements([1, 2, 3])
    // 2
    // >>> average_elements([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // -0.15
    public static double average_elements(ArrayList<Long> l) {
        return (double) sum_elements(l) / number_of_elements(l);
    }
    // Return the median of all elements in the list.
    // >>> median_elements([1, 2, 3])
    // 2
    // >>> median_elements([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    // -3
    public static long median_elements(ArrayList<Long> l) {
        long median = 0;
        if (number_of_elements(l

    }
    public static void main(String[] args) {
    assert(max_element((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l)))) == (3l));
    assert(max_element((new ArrayList<Long>(Arrays.asList((long)5l, (long)3l, (long)-5l, (long)2l, (long)-3l, (long)3l, (long)9l, (long)0l, (long)124l, (long)1l, (long)-10l)))) == (124l));
    }

}
