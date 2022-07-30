import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given an array arr of integers and you need to return
    // sum of magnitudes of integers multiplied by product of all signs
    // of each number in the array, represented by 1, -1 or 0.
    // Note: return None for empty arr.
    // Example:
    // >>> prod_signs([1, 2, 2, -4]) == -9
    // >>> prod_signs([0, 1]) == 0
    // >>> prod_signs([]) == None
    public static Optional<Long> prod_signs(ArrayList<Long> arr) {
        if (arr.isEmpty()) {
            return Optional.empty();
        }
        long sum = 0;
        long prod = 1;
        for (Long l : arr) {
            sum += Math.abs(l);
            prod *= l > 0 ? 1 : l < 0 ? -1 : 0;
        }
        return Optional.of(sum * prod);
    }
}
Problem.prod_signs(new ArrayList<Long>());
Problem.prod_signs(new ArrayList<Long>(){{add(1);add(2);add(2);add(-4);}});
Problem.prod_signs(new ArrayList<Long>(){{add(0);add(1);}});
Problem.prod_signs(new ArrayList<Long>(){{add(0);}});
Problem.prod_signs(new ArrayList<Long>(){{add(1);}});
Problem.prod_signs(new ArrayList<Long>(){{add(1);add(2);}});


    }
    public static void main(String[] args) {
    prod_signs((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)2l, (long)-4l)))).equals(Optional.of(-9l));
    prod_signs((new ArrayList<Long>(Arrays.asList((long)0l, (long)1l)))).equals(Optional.of(0l));
    prod_signs((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l, (long)1l, (long)2l, (long)3l, (long)-1l, (long)1l)))).equals(Optional.of(-10l));
    prod_signs((new ArrayList<Long>(Arrays.asList()))).equals(Optional.empty());
    prod_signs((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)1l, (long)2l, (long)-1l, (long)-1l, (long)9l)))).equals(Optional.of(20l));
    prod_signs((new ArrayList<Long>(Arrays.asList((long)-1l, (long)1l, (long)-1l, (long)1l)))).equals(Optional.of(4l));
    prod_signs((new ArrayList<Long>(Arrays.asList((long)-1l, (long)1l, (long)1l, (long)1l)))).equals(Optional.of(-4l));
    prod_signs((new ArrayList<Long>(Arrays.asList((long)-1l, (long)1l, (long)1l, (long)0l)))).equals(Optional.of(0l));
    }

}
