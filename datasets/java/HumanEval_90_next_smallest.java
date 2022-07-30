import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a list of integers.
    // Write a function next_smallest() that returns the 2nd smallest element of the list.
    // Return None if there is no such element.
    // next_smallest([1, 2, 3, 4, 5]) == 2
    // next_smallest([5, 1, 4, 3, 2]) == 2
    // next_smallest([]) == None
    // next_smallest([1, 1]) == None
    public static Optional<Long> next_smallest(ArrayList<Long> lst) {
        if (lst.size() < 2) {
            return Optional.empty();
        }
        Collections.sort(lst);
        return Optional.of(lst.get(1));
    }
    // You are given a list of integers.
    // Write a function next_largest() that returns the 2nd largest element of the list.
    // Return None if there is no such element.
    // next_largest([1, 2, 3, 4, 5]) == 4
    // next_largest([5, 1, 4, 3, 2]) == 4
    // next_largest([]) == None
    // next_largest([1, 1]) == None
    public static Optional<Long> next_largest(ArrayList<Long> lst) {
        if (lst.size() < 2) {
            return Optional.empty();
        }
        Collections.sort(lst);
        return Optional.of(lst.get(lst.size() - 2));
    }
    // You are given a list of integers.
    // Write a function next_smallest_index() that returns the index of the 2nd smallest element of the list.
    // Return None if there is no such element.
    // next_smallest_index([1, 2, 3, 4, 5]) == 1
    // next_smallest_index([5, 1, 4, 3, 2]) == 1
    // next_smallest_index([]) == None
    // next_smallest_index([1, 1]) == None
    public static Optional<Integer> next_smallest_index(ArrayList<Long> lst) {
        if (lst.size() < 2) {
            return Optional.empty();
        }
        Collections.sort(lst);
        return Optional.of(lst.indexOf(lst.get(1)));
    }
    // You are given a list of integers.
    // Write a function next_largest_index() that returns the index of the 2nd largest element of the list.
    // Return None if there is no such element.
    // next_largest_index([1, 2, 3, 4, 5

    }
    public static void main(String[] args) {
    next_smallest((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l)))).equals(Optional.of(2l));
    next_smallest((new ArrayList<Long>(Arrays.asList((long)5l, (long)1l, (long)4l, (long)3l, (long)2l)))).equals(Optional.of(2l));
    next_smallest((new ArrayList<Long>(Arrays.asList()))).equals(Optional.empty());
    next_smallest((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l)))).equals(Optional.empty());
    next_smallest((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l, (long)1l, (long)1l, (long)0l)))).equals(Optional.of(1l));
    next_smallest((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l)))).equals(Optional.empty());
    next_smallest((new ArrayList<Long>(Arrays.asList((long)-35l, (long)34l, (long)12l, (long)-45l)))).equals(Optional.of(-35l));
    }

}
