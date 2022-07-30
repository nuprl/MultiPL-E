import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given list of integers, return list in strange order.
    // Strange sorting, is when you start with the minimum value,
    // then maximum of the remaining integers, then minimum and so on.
    // Examples:
    // strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
    // strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
    // strange_sort_list([]) == []
    public static ArrayList<Long> strange_sort_list(ArrayList<Long> lst) {
        ArrayList<Long> result = new ArrayList<Long>();
        if (lst.size() == 0) {
            return result;
        }
        long min = lst.get(0);
        long max = lst.get(0);
        for (long i : lst) {
            if (i < min) {
                min = i;
            }
            if (i > max) {
                max = i;
            }
        }
        while (result.size() < lst.size()) {
            result.add(min);
            min = Long.MAX_VALUE;
            for (long i : lst) {
                if (i > max && i < min) {
                    min = i;
                }
            }
            if (min == Long.MAX_VALUE) {
                break;
            }
            result.add(max);
            max = Long.MIN_VALUE;
            for (long i : lst) {
                if (i < max && i > min) {
                    max = i;
                }
            }
        }
        return result;
    }
    // Given list of integers, return list in strange order.
    // Strange sorting, is when you start with the minimum value,
    // then maximum of the remaining integers, then minimum and so on.
    // Examples:
    // strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
    // strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
    // strange_sort_list([]) == []
    public static ArrayList<Integer> strange_sort_list(ArrayList<Integer> lst) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        if (lst.size() == 0) {
            return result;
        }
        int min = lst.get(0);
        int max = lst.get(0);
        for (int i : lst) {
            if (i < min) {
                min = i;
            }
            if (i

    }
    public static void main(String[] args) {
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)2l, (long)3l))));
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)5l, (long)6l, (long)7l, (long)8l, (long)9l)))).equals((new ArrayList<Long>(Arrays.asList((long)5l, (long)9l, (long)6l, (long)8l, (long)7l))));
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)5l, (long)2l, (long)4l, (long)3l))));
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)5l, (long)6l, (long)7l, (long)8l, (long)9l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)9l, (long)5l, (long)8l, (long)6l, (long)7l))));
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)5l, (long)5l, (long)5l, (long)5l)))).equals((new ArrayList<Long>(Arrays.asList((long)5l, (long)5l, (long)5l, (long)5l))));
    strange_sort_list((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l, (long)7l, (long)8l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)8l, (long)2l, (long)7l, (long)3l, (long)6l, (long)4l, (long)5l))));
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)0l, (long)2l, (long)2l, (long)2l, (long)5l, (long)5l, (long)-5l, (long)-5l)))).equals((new ArrayList<Long>(Arrays.asList((long)-5l, (long)5l, (long)-5l, (long)5l, (long)0l, (long)2l, (long)2l, (long)2l))));
    strange_sort_list((new ArrayList<Long>(Arrays.asList((long)111111l)))).equals((new ArrayList<Long>(Arrays.asList((long)111111l))));
    }

}
