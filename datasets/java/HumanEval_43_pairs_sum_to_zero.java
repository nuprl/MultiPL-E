import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // pairs_sum_to_zero takes a list of integers as an input.
    // it returns True if there are two distinct elements in the list that
    // sum to zero, and False otherwise.
    // >>> pairs_sum_to_zero([1, 3, 5, 0])
    // False
    // >>> pairs_sum_to_zero([1, 3, -2, 1])
    // False
    // >>> pairs_sum_to_zero([1, 2, 3, 7])
    // False
    // >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
    // True
    // >>> pairs_sum_to_zero([1])
    // False
    public static boolean pairs_sum_to_zero(ArrayList<Long> l) {
        if (l.size() < 2) {
            return false;
        }
        HashMap<Long, Long> hm = new HashMap<Long, Long>();
        for (Long i : l) {
            if (hm.containsKey(i)) {
                return true;
            }
            hm.put(-i, i);
        }
        return false;
    }
    public static void main(String[] args) {
        ArrayList<Long> l = new ArrayList<Long>();
        l.add(1);
        l.add(3);
        l.add(5);
        l.add(0);
        System.out.println(pairs_sum_to_zero(l));
    }
}

    }
    public static void main(String[] args) {
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)5l, (long)0l)))) == (false));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)-2l, (long)1l)))) == (false));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)7l)))) == (false));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)-5l, (long)3l, (long)5l, (long)7l)))) == (true));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l)))) == (false));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)-3l, (long)9l, (long)-1l, (long)3l, (long)2l, (long)30l)))) == (true));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)-3l, (long)9l, (long)-1l, (long)3l, (long)2l, (long)31l)))) == (true));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)-3l, (long)9l, (long)-1l, (long)4l, (long)2l, (long)30l)))) == (false));
    assert(pairs_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)-3l, (long)9l, (long)-1l, (long)4l, (long)2l, (long)31l)))) == (false));
    }

}
