import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    // Empty sum should be equal to 0 and empty product should be equal to 1.
    // >>> sum_product([])
    // (0, 1)
    // >>> sum_product([1, 2, 3, 4])
    // (10, 24)
    public static Pair<Long, Long> sum_product(ArrayList<Long> numbers) {
        if (numbers.size() == 0) {
            return new Pair<>(0L, 1L);
        }
        long sum = 0;
        long product = 1;
        for (Long number : numbers) {
            sum += number;
            product *= number;
        }
        return new Pair<>(sum, product);
    }
    // For a given list of integers, return a tuple consisting of the minimum and maximum of all the integers in a list.
    // >>> min_max([])
    // (None, None)
    // >>> min_max([1, 2, 3, 4])
    // (1, 4)
    public static Pair<Long, Long> min_max(ArrayList<Long> numbers) {
        if (numbers.size() == 0) {
            return new Pair<>(null, null);
        }
        long min = Long.MAX_VALUE;
        long max = Long.MIN_VALUE;
        for (Long number : numbers) {
            if (number < min) {
                min = number;
            }
            if (number > max) {
                max = number;
            }
        }
        return new Pair<>(min, max);
    }
    // For a given list of integers, return a tuple consisting of the first and last elements of a given list.
    // If the list has fewer than two elements, return None.
    // >>> first_last([])
    // None
    // >>> first_last([1, 2, 3, 4])
    // (1, 4)
    public static Pair<Long, Long> first_last(ArrayList<Long> numbers) {
        if (numbers.size() < 2) {
            return null;
        }
        return new Pair<>(numbers.get(0), numbers.get(numbers.size() - 1));
    }
    // For a given list of integers, return a tuple consisting of the first and last elements of a given list,
    // if the first element is greater than the last element.
    // If the list has fewer than two elements, return None.
    // >>> first_last_swapped([])

    }
    public static void main(String[] args) {
    sum_product((new ArrayList<Long>(Arrays.asList()))).equals((Pair.with(0l, 1l)));
    sum_product((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l, (long)1l)))).equals((Pair.with(3l, 1l)));
    sum_product((new ArrayList<Long>(Arrays.asList((long)100l, (long)0l)))).equals((Pair.with(100l, 0l)));
    sum_product((new ArrayList<Long>(Arrays.asList((long)3l, (long)5l, (long)7l)))).equals((Pair.with(15l, 105l)));
    sum_product((new ArrayList<Long>(Arrays.asList((long)10l)))).equals((Pair.with(10l, 10l)));
    }

}
