import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
    // Examples
    // solution([5, 8, 7, 1]) ==> 12
    // solution([3, 3, 3, 3, 3]) ==> 9
    // solution([30, 13, 24, 321]) ==>0
    public static long solution(ArrayList<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i++) {
            if (i % 2 == 0) {
                if (lst.get(i) % 2 != 0) {
                    sum += lst.get(i);
                }
            }
        }
        return sum;
    }
    // Given a list of integers, return the sum of all the even elements.
    // Examples
    // solution([5, 8, 7, 1]) ==> 8
    // solution([3, 3, 3, 3, 3]) ==> 0
    // solution([30, 13, 24, 321]) ==> 24
    public static long solution(ArrayList<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i++) {
            if (lst.get(i) % 2 == 0) {
                sum += lst.get(i);
            }
        }
        return sum;
    }
    // Given a list of integers, return the sum of all the elements.
    // Examples
    // solution([5, 8, 7, 1]) ==> 26
    // solution([3, 3, 3, 3, 3]) ==> 15
    // solution([30, 13, 24, 321]) ==> 377
    public static long solution(ArrayList<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i++) {
            sum += lst.get(i);
        }
        return sum;
    }
    // Given a list of integers, return the sum of all the elements that are greater than the previous element.
    // Examples
    // solution([5, 8, 7, 1]) ==> 16
    // solution([3, 3, 3, 3, 3]) ==> 0
    // solution([30, 13, 24, 321]) ==> 321
    public static long solution(ArrayList<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i++) {
            if (i != 0

    }
    public static void main(String[] args) {
    assert(solution((new ArrayList<Long>(Arrays.asList((long)5l, (long)8l, (long)7l, (long)1l)))) == (12l));
    assert(solution((new ArrayList<Long>(Arrays.asList((long)3l, (long)3l, (long)3l, (long)3l, (long)3l)))) == (9l));
    assert(solution((new ArrayList<Long>(Arrays.asList((long)30l, (long)13l, (long)24l, (long)321l)))) == (0l));
    assert(solution((new ArrayList<Long>(Arrays.asList((long)5l, (long)9l)))) == (5l));
    assert(solution((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)8l)))) == (0l));
    assert(solution((new ArrayList<Long>(Arrays.asList((long)30l, (long)13l, (long)23l, (long)32l)))) == (23l));
    assert(solution((new ArrayList<Long>(Arrays.asList((long)3l, (long)13l, (long)2l, (long)9l)))) == (3l));
    }

}
