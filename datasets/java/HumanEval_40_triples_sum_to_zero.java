import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // triples_sum_to_zero takes a list of integers as an input.
    // it returns True if there are three distinct elements in the list that
    // sum to zero, and False otherwise.
    // >>> triples_sum_to_zero([1, 3, 5, 0])
    // False
    // >>> triples_sum_to_zero([1, 3, -2, 1])
    // True
    // >>> triples_sum_to_zero([1, 2, 3, 7])
    // False
    // >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
    // True
    // >>> triples_sum_to_zero([1])
    // False
    public static boolean triples_sum_to_zero(ArrayList<Long> l) {
        if (l.size() < 3) {
            return false;
        }
        HashMap<Long, Integer> hm = new HashMap<Long, Integer>();
        for (Long i : l) {
            if (hm.containsKey(i)) {
                hm.put(i, hm.get(i) + 1);
            } else {
                hm.put(i, 1);
            }
        }
        for (Long i : l) {
            for (Long j : l) {
                if (i == j) {
                    continue;
                }
                Long k = -i - j;
                if (hm.containsKey(k)) {
                    if (hm.get(k) > 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
    public static void main(String[] args) {
        ArrayList<Long> l = new ArrayList<Long>();
        l.add(1L);
        l.add(3L);
        l.add(5L);
        l.add(0L);
        System.out.println(triples_sum_to_zero(l));
        l.clear();
        l.add(1L);
        l.add(3L);
        l.add(-2L);
        l.add(1L);
        System.out.println(triples_sum_to_zero(l));
        l.clear();
        l.add(1L);
        l.add(2L);
        l.add(3L);
        l.add(7L);
        System.out.println(triples_sum_to_zero(l));
        l.clear();
        l.add(2L);
        l.add(4L);
        l.add(-5L);
        l.add(3L);
        l.add(9L);
        l.add(7L);
        System.out.println(triples_sum_to_zero(l));
        l.clear();
        l.add(1

    }
    public static void main(String[] args) {
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)5l, (long)0l)))) == (false));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)5l, (long)-1l)))) == (false));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)-2l, (long)1l)))) == (true));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)7l)))) == (false));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)5l, (long)7l)))) == (false));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)-5l, (long)3l, (long)9l, (long)7l)))) == (true));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l)))) == (false));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)5l, (long)-100l)))) == (false));
    assert(triples_sum_to_zero((new ArrayList<Long>(Arrays.asList((long)100l, (long)3l, (long)5l, (long)-100l)))) == (false));
    }

}
