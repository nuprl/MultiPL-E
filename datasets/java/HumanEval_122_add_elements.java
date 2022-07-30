import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a non-empty array of integers arr and an integer k, return
    // the sum of the elements with at most two digits from the first k elements of arr.
    // Example:
    // Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
    // Output: 24 # sum of 21 + 3
    // Constraints:
    // 1. 1 <= len(arr) <= 100
    // 2. 1 <= k <= len(arr)
    public static long add_elements(ArrayList<Long> arr, long k) {
        long sum = 0;
        for (int i = 0; i < Math.min(k, arr.size()); i++) {
            sum += arr.get(i);
        }
        return sum;
    }
    public static void main(String[] args) {
        ArrayList<Long> arr = new ArrayList<>();
        arr.add(111);
        arr.add(21);
        arr.add(3);
        arr.add(4000);
        arr.add(5);
        arr.add(6);
        arr.add(7);
        arr.add(8);
        arr.add(9);
        System.out.println(add_elements(arr, 4));
    }
}
Problem.main(null);


    }
    public static void main(String[] args) {
    assert(add_elements((new ArrayList<Long>(Arrays.asList((long)1l, (long)-2l, (long)-3l, (long)41l, (long)57l, (long)76l, (long)87l, (long)88l, (long)99l))), (3l)) == (-4l));
    assert(add_elements((new ArrayList<Long>(Arrays.asList((long)111l, (long)121l, (long)3l, (long)4000l, (long)5l, (long)6l))), (2l)) == (0l));
    assert(add_elements((new ArrayList<Long>(Arrays.asList((long)11l, (long)21l, (long)3l, (long)90l, (long)5l, (long)6l, (long)7l, (long)8l, (long)9l))), (4l)) == (125l));
    assert(add_elements((new ArrayList<Long>(Arrays.asList((long)111l, (long)21l, (long)3l, (long)4000l, (long)5l, (long)6l, (long)7l, (long)8l, (long)9l))), (4l)) == (24l));
    assert(add_elements((new ArrayList<Long>(Arrays.asList((long)1l))), (1l)) == (1l));
    }

}
