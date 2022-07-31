import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive integer n, you have to make a pile of n levels of stones.
    // The first level has n stones.
    // The number of stones in the next level is:
    // - the next odd number if n is odd.
    // - the next even number if n is even.
    // Return the number of stones in each level in a list, where element at index
    // i represents the number of stones in the level (i+1).
    // Examples:
    // >>> make_a_pile(3)
    // [3, 5, 7]
    public static ArrayList<Long> make_a_pile(long n) {
        ArrayList<Long> result = new ArrayList<Long>();
        result.add(n);
        while (n > 1) {
            if (n % 2 == 0) {
                n = n / 2;
            } else {
                n = n * 3 + 1;
            }
            result.add(n);
        }
        return result;
    }
    // Given a list of integers, return the number of pairs that have the same value.
    // Examples:
    // >>> count_pairs([1, 2, 3, 1, 2, 3])
    // 3
    // >>> count_pairs([1, 2, 3, 1, 2, 3, 1, 2, 3])
    // 9
    public static long count_pairs(ArrayList<Long> list) {
        long result = 0;
        for (int i = 0; i < list.size() - 1; i++) {
            for (int j = i + 1; j < list.size(); j++) {
                if (list.get(i) == list.get(j)) {
                    result++;
                }
            }
        }
        return result;
    }
    // Given a list of integers, return the number of pairs that have the same value.
    // Examples:
    // >>> count_pairs_fast([1, 2, 3, 1, 2, 3])
    // 3
    // >>> count_pairs_fast([1, 2, 3, 1, 2, 3, 1, 2, 3])
    // 9
    public static long count_pairs_fast(ArrayList<Long> list) {
        long result = 0;
        HashMap<Long, Long> map = new HashMap<Long, Long>();
        for (Long i : list) {
            if (map.containsKey(i)) {
                result += map.get(i);
            }
            map.put(i, map.getOrDefault(i, 0L) + 1);
        }
        return result;
    }
    // Given a list of integers, return the number of pairs that have the same value.
    // Examples

    }
    public static void main(String[] args) {
    make_a_pile((3l)).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)5l, (long)7l))));
    make_a_pile((4l)).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)6l, (long)8l, (long)10l))));
    make_a_pile((5l)).equals((new ArrayList<Long>(Arrays.asList((long)5l, (long)7l, (long)9l, (long)11l, (long)13l))));
    make_a_pile((6l)).equals((new ArrayList<Long>(Arrays.asList((long)6l, (long)8l, (long)10l, (long)12l, (long)14l, (long)16l))));
    make_a_pile((8l)).equals((new ArrayList<Long>(Arrays.asList((long)8l, (long)10l, (long)12l, (long)14l, (long)16l, (long)18l, (long)20l, (long)22l))));
    }

}
