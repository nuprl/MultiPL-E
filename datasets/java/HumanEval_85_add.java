import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    public static long add(ArrayList<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i += 2) {
            sum += lst.get(i);
        }
        return sum;
    }
    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    public static long add(List<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i += 2) {
            sum += lst.get(i);
        }
        return sum;
    }
    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    public static long add(LinkedList<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i += 2) {
            sum += lst.get(i);
        }
        return sum;
    }
    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    public static long add(Vector<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i += 2) {
            sum += lst.get(i);
        }
        return sum;
    }
    // Given a non-empty list of integers lst. add the even elements that are at odd indices..
    // Examples:
    // add([4, 2, 6, 7]) ==> 2
    public static long add(Stack<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i += 2) {
            sum += lst.get(i);
        }
        return sum;
    }
    // Given a non-empty

    }
    public static void main(String[] args) {
    assert(add((new ArrayList<Long>(Arrays.asList((long)4l, (long)88l)))) == (88l));
    assert(add((new ArrayList<Long>(Arrays.asList((long)4l, (long)5l, (long)6l, (long)7l, (long)2l, (long)122l)))) == (122l));
    assert(add((new ArrayList<Long>(Arrays.asList((long)4l, (long)0l, (long)6l, (long)7l)))) == (0l));
    assert(add((new ArrayList<Long>(Arrays.asList((long)4l, (long)4l, (long)6l, (long)8l)))) == (12l));
    }

}
