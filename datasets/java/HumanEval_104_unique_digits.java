import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a list of positive integers x. return a sorted list of all 
    // elements that hasn't any even digit.
    // Note: Returned list should be sorted in increasing order.
    // For example:
    // >>> unique_digits([15, 33, 1422, 1])
    // [1, 15, 33]
    // >>> unique_digits([152, 323, 1422, 10])
    // []
    public static ArrayList<Long> unique_digits(ArrayList<Long> x) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : x) {
            if (i < 10) {
                result.add(i);
            } else {
                int temp = i;
                while (temp > 0) {
                    int digit = temp % 10;
                    if (digit % 2 == 0) {
                        break;
                    }
                    temp /= 10;
                }
                if (temp == 0) {
                    result.add(i);
                }
            }
        }
        Collections.sort(result);
        return result;
    }
    // Given a list of positive integers x. return a sorted list of all 
    // elements that has any even digit.
    // Note: Returned list should be sorted in increasing order.
    // For example:
    // >>> even_digits([15, 33, 1422, 1])
    // [1422]
    // >>> even_digits([152, 323, 1422, 10])
    // [10, 1422, 152, 323]
    public static ArrayList<Long> even_digits(ArrayList<Long> x) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : x) {
            if (i < 10) {
                if (i % 2 == 0) {
                    result.add(i);
                }
            } else {
                int temp = i;
                while (temp > 0) {
                    int digit = temp % 10;
                    if (digit % 2 == 0) {
                        result.add(i);
                        break;
                    }
                    temp /= 10;
                }
            }
        }
        Collections.sort(result);
        return result;
    }
    // Given a list of positive integers x. return a sorted list of all 
    // elements that has any even digit.
    // Note: Returned list should be sorted in increasing order.
    // For example:
    // >>> even_digits([15, 33, 1422, 1])
    // [1422]
    // >>> even_digits([152,

    }
    public static void main(String[] args) {
    unique_digits((new ArrayList<Long>(Arrays.asList((long)15l, (long)33l, (long)1422l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)15l, (long)33l))));
    unique_digits((new ArrayList<Long>(Arrays.asList((long)152l, (long)323l, (long)1422l, (long)10l)))).equals((new ArrayList<Long>(Arrays.asList())));
    unique_digits((new ArrayList<Long>(Arrays.asList((long)12345l, (long)2033l, (long)111l, (long)151l)))).equals((new ArrayList<Long>(Arrays.asList((long)111l, (long)151l))));
    unique_digits((new ArrayList<Long>(Arrays.asList((long)135l, (long)103l, (long)31l)))).equals((new ArrayList<Long>(Arrays.asList((long)31l, (long)135l))));
    }

}
