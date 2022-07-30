import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given an array arr of integers, find the minimum number of elements that
    // need to be changed to make the array palindromic. A palindromic array is an array that
    // is read the same backwards and forwards. In one change, you can change one element to any other element.
    // For example:
    // smallest_change([1,2,3,5,4,7,9,6]) == 4
    // smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
    // smallest_change([1, 2, 3, 2, 1]) == 0
    public static long smallest_change(ArrayList<Long> arr) {
        // Write your code here
        long count = 0;
        for (int i = 0; i < arr.size() / 2; i++) {
            if (arr.get(i) != arr.get(arr.size() - 1 - i)) {
                count++;
            }
        }
        return count;
    

    }
    public static void main(String[] args) {
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)5l, (long)4l, (long)7l, (long)9l, (long)6l)))) == (4l));
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)3l, (long)2l, (long)2l)))) == (1l));
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)2l)))) == (1l));
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)4l, (long)2l)))) == (1l));
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)2l, (long)1l)))) == (0l));
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)3l, (long)1l, (long)1l, (long)3l)))) == (0l));
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)1l)))) == (0l));
    assert(smallest_change((new ArrayList<Long>(Arrays.asList((long)0l, (long)1l)))) == (1l));
    }

}
