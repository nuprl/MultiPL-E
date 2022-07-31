import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function which returns the largest index of an element which
    // is not greater than or equal to the element immediately preceding it. If
    // no such element exists then return -1. The given array will not contain
    // duplicate values.
    // Examples:
    // can_arrange([1,2,4,3,5]) = 3
    // can_arrange([1,2,3]) = -1
    public static long can_arrange(ArrayList<Long> arr) {
        // Write your code here
        if (arr.size() == 0) {
            return -1;
        }
        long[] arr1 = arr.stream().mapToLong(Long::longValue).toArray();
        Arrays.sort(arr1);
        for (int i = 0; i < arr1.length - 1; i++) {
            if (arr1[i] < arr1[i + 1]) {
                return i;
            }
        }
        return -1;
    }
    // Create a function which returns the sum of all elements in the given
    // array. The given array will contain only integers.
    // Examples:
    // sum_arr([1,2,3]) = 6
    // sum_arr([]) = 0
    public static long sum_arr(ArrayList<Long> arr) {
        // Write your code here
        if (arr.size() == 0) {
            return 0;
        }
        long[] arr1 = arr.stream().mapToLong(Long::longValue).toArray();
        return Arrays.stream(arr1).sum();
    }
    // Create a function which returns the sum of all elements in the given
    // array. The given array will contain only integers.
    // Examples:
    // sum_arr([1,2,3]) = 6
    // sum_arr([]) = 0
    public static long sum_arr(long[] arr) {
        // Write your code here
        if (arr.length == 0) {
            return 0;
        }
        return Arrays.stream(arr).sum();
    }
    // Create a function which returns the sum of all elements in the given
    // array. The given array will contain only integers.
    // Examples:
    // sum_arr([1,2,3]) = 6
    // sum_arr([]) = 0
    public static long sum_arr(int[] arr) {
        // Write your code here
        if (arr.length == 0) {
            return 0;
        }
        return Arrays.stream(arr).sum();
    }
    // Create a function which returns the sum

    }
    public static void main(String[] args) {
    assert(can_arrange((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)4l, (long)3l, (long)5l)))) == (3l));
    assert(can_arrange((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)4l, (long)5l)))) == (-1l));
    assert(can_arrange((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)2l, (long)5l, (long)6l, (long)7l, (long)8l, (long)9l, (long)10l)))) == (2l));
    assert(can_arrange((new ArrayList<Long>(Arrays.asList((long)4l, (long)8l, (long)5l, (long)7l, (long)3l)))) == (4l));
    assert(can_arrange((new ArrayList<Long>(Arrays.asList()))) == (-1l));
    }

}
