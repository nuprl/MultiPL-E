import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // The Brazilian factorial is defined as:
    // brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    // where n > 0
    // For example:
    // >>> special_factorial(4)
    // 288
    // The function will receive an integer as input and should return the special
    // factorial of this integer.
    public static long special_factorial(long n) {
        long result = 1;
        for (long i = n; i > 0; i--) {
            result *= i;
        }
        return result;
    }
    // The following function will receive a list of integers as input and will
    // return a list of tuples, where each tuple contains the original value and
    // the number of times it appears in the list.
    // For example:
    // >>> count_occurrences([1, 1, 2, 2, 2, 3, 3, 5])
    // [(1, 2), (2, 3), (3, 2), (5, 1)]
    public static List<Tuple2<Integer, Integer>> count_occurrences(List<Integer> list) {
        Map<Integer, Integer> map = new HashMap<>();
        for (Integer i : list) {
            if (map.containsKey(i)) {
                map.put(i, map.get(i) + 1);
            } else {
                map.put(i, 1);
            }
        }
        List<Tuple2<Integer, Integer>> result = new ArrayList<>();
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            result.add(Tuple.of(entry.getKey(), entry.getValue()));
        }
        return result;
    }
    // The following function will receive a list of integers as input and will
    // return a list of tuples, where each tuple contains the original value and
    // the number of times it appears in the list.
    // For example:
    // >>> count_occurrences([1, 1, 2, 2, 2, 3, 3, 5])
    // [(1, 2), (2, 3), (3, 2), (5, 1)]
    public static List<Tuple2<Integer, Integer>> count_occurrences(List<Integer> list) {
        Map<Integer, Integer> map = new HashMap<>();
        for (Integer i : list) {
            if (map.containsKey(i)) {
                map.put(i, map.get

    }
    public static void main(String[] args) {
    assert(special_factorial((4l)) == (288l));
    assert(special_factorial((5l)) == (34560l));
    assert(special_factorial((7l)) == (125411328000l));
    assert(special_factorial((1l)) == (1l));
    }

}
