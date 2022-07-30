import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a non-empty list of positive integers. Return the greatest integer that is greater than 
    // zero, and has a frequency greater than or equal to the value of the integer itself. 
    // The frequency of an integer is the number of times it appears in the list.
    // If no such a value exist, return -1.
    // Examples:
    // search([4, 1, 2, 2, 3, 1]) == 2
    // search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
    // search([5, 5, 4, 4, 4]) == -1
    public static long search(ArrayList<Long> lst) {
        if (lst.size() == 0) {
            return -1;
        }
        long max = lst.get(0);
        long count = 1;
        for (int i = 1; i < lst.size(); i++) {
            if (lst.get(i) > max) {
                max = lst.get(i);
                count = 1;
            } else if (lst.get(i) == max) {
                count++;
            }
        }
        if (count < max) {
            return -1;
        }
        return max;
    }
    public static void main(String[] args) {
        ArrayList<Long> lst = new ArrayList<Long>();
        lst.add(4);
        lst.add(1);
        lst.add(2);
        lst.add(2);
        lst.add(3);
        lst.add(1);
        System.out.println(search(lst));
    }
}

    }
    public static void main(String[] args) {
    assert(search((new ArrayList<Long>(Arrays.asList((long)5l, (long)5l, (long)5l, (long)5l, (long)1l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)4l, (long)1l, (long)4l, (long)1l, (long)4l, (long)4l)))) == (4l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)3l, (long)3l)))) == (-1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)8l, (long)8l, (long)8l, (long)8l, (long)8l, (long)8l, (long)8l, (long)8l)))) == (8l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)3l, (long)2l, (long)2l)))) == (2l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)2l, (long)7l, (long)8l, (long)8l, (long)4l, (long)8l, (long)7l, (long)3l, (long)9l, (long)6l, (long)5l, (long)10l, (long)4l, (long)3l, (long)6l, (long)7l, (long)1l, (long)7l, (long)4l, (long)10l, (long)8l, (long)1l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)8l, (long)2l)))) == (2l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)6l, (long)7l, (long)1l, (long)8l, (long)8l, (long)10l, (long)5l, (long)8l, (long)5l, (long)3l, (long)10l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)8l, (long)8l, (long)3l, (long)6l, (long)5l, (long)6l, (long)4l)))) == (-1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)6l, (long)9l, (long)6l, (long)7l, (long)1l, (long)4l, (long)7l, (long)1l, (long)8l, (long)8l, (long)9l, (long)8l, (long)10l, (long)10l, (long)8l, (long)4l, (long)10l, (long)4l, (long)10l, (long)1l, (long)2l, (long)9l, (long)5l, (long)7l, (long)9l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)1l, (long)9l, (long)10l, (long)1l, (long)3l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)6l, (long)9l, (long)7l, (long)5l, (long)8l, (long)7l, (long)5l, (long)3l, (long)7l, (long)5l, (long)10l, (long)10l, (long)3l, (long)6l, (long)10l, (long)2l, (long)8l, (long)6l, (long)5l, (long)4l, (long)9l, (long)5l, (long)3l, (long)10l)))) == (5l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)1l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)8l, (long)8l, (long)10l, (long)6l, (long)4l, (long)3l, (long)5l, (long)8l, (long)2l, (long)4l, (long)2l, (long)8l, (long)4l, (long)6l, (long)10l, (long)4l, (long)2l, (long)1l, (long)10l, (long)2l, (long)1l, (long)1l, (long)5l)))) == (4l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)2l, (long)10l, (long)4l, (long)8l, (long)2l, (long)10l, (long)5l, (long)1l, (long)2l, (long)9l, (long)5l, (long)5l, (long)6l, (long)3l, (long)8l, (long)6l, (long)4l, (long)10l)))) == (2l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)1l, (long)6l, (long)10l, (long)1l, (long)6l, (long)9l, (long)10l, (long)8l, (long)6l, (long)8l, (long)7l, (long)3l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)9l, (long)2l, (long)4l, (long)1l, (long)5l, (long)1l, (long)5l, (long)2l, (long)5l, (long)7l, (long)7l, (long)7l, (long)3l, (long)10l, (long)1l, (long)5l, (long)4l, (long)2l, (long)8l, (long)4l, (long)1l, (long)9l, (long)10l, (long)7l, (long)10l, (long)2l, (long)8l, (long)10l, (long)9l, (long)4l)))) == (4l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)2l, (long)6l, (long)4l, (long)2l, (long)8l, (long)7l, (long)5l, (long)6l, (long)4l, (long)10l, (long)4l, (long)6l, (long)3l, (long)7l, (long)8l, (long)8l, (long)3l, (long)1l, (long)4l, (long)2l, (long)2l, (long)10l, (long)7l)))) == (4l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)9l, (long)8l, (long)6l, (long)10l, (long)2l, (long)6l, (long)10l, (long)2l, (long)7l, (long)8l, (long)10l, (long)3l, (long)8l, (long)2l, (long)6l, (long)2l, (long)3l, (long)1l)))) == (2l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)5l, (long)5l, (long)3l, (long)9l, (long)5l, (long)6l, (long)3l, (long)2l, (long)8l, (long)5l, (long)6l, (long)10l, (long)10l, (long)6l, (long)8l, (long)4l, (long)10l, (long)7l, (long)7l, (long)10l, (long)8l)))) == (-1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)10l)))) == (-1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)9l, (long)7l, (long)7l, (long)2l, (long)4l, (long)7l, (long)2l, (long)10l, (long)9l, (long)7l, (long)5l, (long)7l, (long)2l)))) == (2l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)5l, (long)4l, (long)10l, (long)2l, (long)1l, (long)1l, (long)10l, (long)3l, (long)6l, (long)1l, (long)8l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)7l, (long)9l, (long)9l, (long)9l, (long)3l, (long)4l, (long)1l, (long)5l, (long)9l, (long)1l, (long)2l, (long)1l, (long)1l, (long)10l, (long)7l, (long)5l, (long)6l, (long)7l, (long)6l, (long)7l, (long)7l, (long)6l)))) == (1l));
    assert(search((new ArrayList<Long>(Arrays.asList((long)3l, (long)10l, (long)10l, (long)9l, (long)2l)))) == (-1l));
    }

}
