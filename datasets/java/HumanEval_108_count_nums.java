import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function count_nums which takes an array of integers and returns
    // the number of elements which has a sum of digits > 0.
    // If a number is negative, then its first signed digit will be negative:
    // e.g. -123 has signed digits -1, 2, and 3.
    // >>> count_nums([]) == 0
    // >>> count_nums([-1, 11, -11]) == 1
    // >>> count_nums([1, 1, 2]) == 3
    public static long count_nums(ArrayList<Long> arr) {
        long count = 0;
        for (long i : arr) {
            if (i > 0) {
                long sum = 0;
                while (i > 0) {
                    sum += i % 10;
                    i /= 10;
                }
                if (sum > 0) {
                    count++;
                }
            }
        }
        return count;
    }
    // Write a function count_nums which takes an array of integers and returns
    // the number of elements which has a sum of digits > 0.
    // If a number is negative, then its first signed digit will be negative:
    // e.g. -123 has signed digits -1, 2, and 3.
    // >>> count_nums([]) == 0
    // >>> count_nums([-1, 11, -11]) == 1
    // >>> count_nums([1, 1, 2]) == 3
    public static long count_nums(ArrayList<Integer> arr) {
        long count = 0;
        for (int i : arr) {
            if (i > 0) {
                int sum = 0;
                while (i > 0) {
                    sum += i % 10;
                    i /= 10;
                }
                if (sum > 0) {
                    count++;
                }
            }
        }
        return count;
    }
    // Write a function count_nums which takes an array of integers and returns
    // the number of elements which has a sum of digits > 0.
    // If a number is negative, then its first signed digit will be negative:
    // e.g. -123 has signed digits -1, 2, and 3.
    // >>> count_nums([]) == 0
    // >>> count_nums([-1, 11, -11]) == 1
    // >>> count_nums([1, 1, 2]) == 3
    public static long count_nums(ArrayList<Long> arr) {
        long count = 0;
        for (long i : arr) {
            if (i > 0) {
                long sum = 0;
                while (i > 0) {
                   

    }
    public static void main(String[] args) {
    assert(count_nums((new ArrayList<Long>(Arrays.asList()))) == (0l));
    assert(count_nums((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-2l, (long)0l)))) == (0l));
    assert(count_nums((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l, (long)2l, (long)-2l, (long)3l, (long)4l, (long)5l)))) == (6l));
    assert(count_nums((new ArrayList<Long>(Arrays.asList((long)1l, (long)6l, (long)9l, (long)-6l, (long)0l, (long)1l, (long)5l)))) == (5l));
    assert(count_nums((new ArrayList<Long>(Arrays.asList((long)1l, (long)100l, (long)98l, (long)-7l, (long)1l, (long)-1l)))) == (4l));
    assert(count_nums((new ArrayList<Long>(Arrays.asList((long)12l, (long)23l, (long)34l, (long)-45l, (long)-56l, (long)0l)))) == (5l));
    assert(count_nums((new ArrayList<Long>(Arrays.asList((long)0l, (long)1l)))) == (1l));
    assert(count_nums((new ArrayList<Long>(Arrays.asList((long)1l)))) == (1l));
    }

}
