import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a list of numbers, return whether or not they are sorted
    // in ascending order. If list has more than 1 duplicate of the same
    // number, return False. Assume no negative numbers and only integers.
    // Examples
    // is_sorted([5]) ➞ True
    // is_sorted([1, 2, 3, 4, 5]) ➞ True
    // is_sorted([1, 3, 2, 4, 5]) ➞ False
    // is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
    // is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
    // is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
    // is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
    // is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
    public static boolean is_sorted(ArrayList<Long> lst) {
        boolean isSorted = true;
        for (int i = 0; i < lst.size() - 1; i++) {
            if (lst.get(i) > lst.get(i + 1)) {
                isSorted = false;
                break;
            }
        }
        return isSorted;
    }
    // Given a list of numbers, return the sum of the list.
    // Examples
    // sum_list([1, 2, 3, 4, 5]) ➞ 15
    // sum_list([5, 5, 5, 5, 5]) ➞ 25
    // sum_list([10, 10, 10, 10, 10]) ➞ 50
    // sum_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) ➞ 55
    // sum_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) ➞ 120
    public static long sum_list(ArrayList<Long> lst) {
        long sum = 0;
        for (Long l : lst) {
            sum += l;
        }
        return sum;
    }
    // Given a list of numbers, return the sum of the list.
    // Examples
    // sum_list([1, 2, 3, 4, 5]) ➞ 15
    // sum_list([5, 5, 5, 5, 5]) ➞ 25
    // sum_list([10, 10, 10, 10, 10]) ➞ 50
    // sum_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) ➞ 55
    // sum_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) ➞ 120
    public static long sum_list(ArrayList<Integer> lst) {
        long sum = 0;
        for (Integer i : lst) {

    }
    public static void main(String[] args) {
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)5l)))) == (true));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l)))) == (true));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)4l, (long)5l)))) == (false));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)))) == (true));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l, (long)7l)))) == (true));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)4l, (long)5l, (long)6l, (long)7l)))) == (false));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList()))) == (true));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l)))) == (true));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)1l)))) == (false));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)2l, (long)2l, (long)3l, (long)4l)))) == (false));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)3l, (long)3l, (long)4l)))) == (false));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)2l, (long)3l, (long)3l, (long)4l)))) == (true));
    assert(is_sorted((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l)))) == (true));
    }

}
