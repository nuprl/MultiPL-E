import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return median of elements in the list l.
    // >>> median([3, 1, 2, 4, 5])
    // 3
    // >>> median([-10, 4, 6, 1000, 10, 20])
    // 15.0
    public static float median(ArrayList<Long> l) {
        if (l.size() == 0) {
            return getDefaultValue(Float.class);
        }
        Collections.sort(l);
        int n = l.size();
        if (n % 2 == 1) {
            return l.get((n - 1) / 2).floatValue();
        } else {
            return (l.get(n / 2 - 1).floatValue() + l.get(n / 2).floatValue()) / 2;
        }
    }
    // Return the most common element in the list l.
    // >>> mostCommon([3, 1, 2, 4, 5])
    // 3
    // >>> mostCommon([-10, 4, 6, 1000, 10, 20])
    // -10
    public static long mostCommon(ArrayList<Long> l) {
        if (l.size() == 0) {
            return getDefaultValue(Long.class);
        }
        Map<Long, Integer> map = new HashMap<Long, Integer>();
        for (Long i : l) {
            Integer count = map.get(i);
            if (count == null) {
                count = 0;
            }
            map.put(i, count + 1);
        }
        Long max = null;
        int maxCount = 0;
        for (Long i : map.keySet()) {
            Integer count = map.get(i);
            if (count > maxCount) {
                max = i;
                maxCount = count;
            }
        }
        return max;
    }
    // Return the number of elements in the list l that are not divisible by n.
    // >>> nonDivisible([3, 1, 2, 4, 5], 3)
    // 2
    // >>> nonDivisible([-10, 4, 6, 1000, 10, 20], 2)
    // 5
    public static int nonDivisible(ArrayList<Long> l, long n) {
        if (l.size() == 0) {
            return getDefaultValue(Integer.class);
        }
        int count = 0;
        for (Long i : l) {
           

    }
    public static void main(String[] args) {
    assert(median((new ArrayList<Long>(Arrays.asList((long)3l, (long)1l, (long)2l, (long)4l, (long)5l)))) == (float)3l);
    assert(median((new ArrayList<Long>(Arrays.asList((long)-10l, (long)4l, (long)6l, (long)1000l, (long)10l, (long)20l)))) == (8.0f));
    assert(median((new ArrayList<Long>(Arrays.asList((long)5l)))) == (float)5l);
    assert(median((new ArrayList<Long>(Arrays.asList((long)6l, (long)5l)))) == (5.5f));
    assert(median((new ArrayList<Long>(Arrays.asList((long)8l, (long)1l, (long)3l, (long)9l, (long)9l, (long)2l, (long)7l)))) == (float)7l);
    }

}
