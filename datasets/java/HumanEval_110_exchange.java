import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // In this problem, you will implement a function that takes two lists of numbers,
    // and determines whether it is possible to perform an exchange of elements
    // between them to make lst1 a list of only even numbers.
    // There is no limit on the number of exchanged elements between lst1 and lst2.
    // If it is possible to exchange elements between the lst1 and lst2 to make
    // all the elements of lst1 to be even, return "YES".
    // Otherwise, return "NO".
    // For example:
    // exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
    // exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
    // It is assumed that the input lists will be non-empty.
    public static String exchange(ArrayList<Long> lst1, ArrayList<Long> lst2) {
        if (lst1.size() != lst2.size()) {
            return "NO";
        }
        for (int i = 0; i < lst1.size(); i++) {
            if (lst1.get(i) % 2 != 0) {
                return "NO";
            }
        }
        for (int i = 0; i < lst2.size(); i++) {
            if (lst2.get(i) % 2 != 0) {
                return "NO";
            }
        }
        return "YES";
    }
    public static void main(String[] args) {
        ArrayList<Long> lst1 = new ArrayList<Long>();
        ArrayList<Long> lst2 = new ArrayList<Long>();
        lst1.add(1L);
        lst1.add(2L);
        lst1.add(3L);
        lst1.add(4L);
        lst2.add(1L);
        lst2.add(2L);
        lst2.add(3L);
        lst2.add(4L);
        System.out.println(exchange(lst1, lst2));
    }
}

    }
    public static void main(String[] args) {
    exchange((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l))), (new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l)))).equals(("YES"));
    exchange((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l))), (new ArrayList<Long>(Arrays.asList((long)1l, (long)5l, (long)3l, (long)4l)))).equals(("NO"));
    exchange((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l))), (new ArrayList<Long>(Arrays.asList((long)2l, (long)1l, (long)4l, (long)3l)))).equals(("YES"));
    exchange((new ArrayList<Long>(Arrays.asList((long)5l, (long)7l, (long)3l))), (new ArrayList<Long>(Arrays.asList((long)2l, (long)6l, (long)4l)))).equals(("YES"));
    exchange((new ArrayList<Long>(Arrays.asList((long)5l, (long)7l, (long)3l))), (new ArrayList<Long>(Arrays.asList((long)2l, (long)6l, (long)3l)))).equals(("NO"));
    exchange((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)6l, (long)1l, (long)8l, (long)9l))), (new ArrayList<Long>(Arrays.asList((long)3l, (long)5l, (long)5l, (long)1l, (long)1l, (long)1l)))).equals(("NO"));
    exchange((new ArrayList<Long>(Arrays.asList((long)100l, (long)200l))), (new ArrayList<Long>(Arrays.asList((long)200l, (long)200l)))).equals(("YES"));
    }

}
