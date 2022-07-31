import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
    // the last couple centuries. However, what people don't know is Tribonacci sequence.
    // Tribonacci sequence is defined by the recurrence:
    // tri(1) = 3
    // tri(n) = 1 + n / 2, if n is even.
    // tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
    // For example:
    // tri(2) = 1 + (2 / 2) = 2
    // tri(4) = 3
    // tri(3) = tri(2) + tri(1) + tri(4)
    // = 2 + 3 + 3 = 8 
    // You are given a non-negative integer number n, you have to a return a list of the 
    // first n + 1 numbers of the Tribonacci sequence.
    // Examples:
    // tri(3) = [1, 3, 2, 8]
    public static ArrayList<Long> tri(long n) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (int i = 0; i <= n; i++) {
            if (i == 0) {
                result.add(0L);
            } else if (i == 1) {
                result.add(1L);
            } else if (i == 2) {
                result.add(1L);
            } else {
                result.add(result.get(i - 1) + result.get(i - 2) + result.get(i - 3));
            }
        }
        return result;
    }
    // You are given a non-negative integer number n, you have to a return a list of the 
    // first n + 1 numbers of the Fibonacci sequence.
    // Examples:
    // fib(3) = [1, 1, 2, 3]
    public static ArrayList<Long> fib(long n) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (int i = 0; i <= n; i++) {
            if (i == 0) {
                result.add(0L);
            } else if (i == 1) {
                result.add(1L);
            } else {
                result.add(result.get(i - 1) + result.get(i - 2));
            }
        }
        return result;
    }
    // You are given a non-negative integer number n, you have to a return a list of the 
    // first n + 1 numbers of the Fibonacci sequence.
    // Examples:
    // fib(3) = [1, 1, 2, 3]
    public static ArrayList<Integer> fib(int n) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        for (int i = 0; i <= n; i++) {
            if (i == 0) {
                result.add(0);
            } else if (i == 1) {
                result.add(1);
            } else {
                result.add(result.get(i - 1) + result.get(i - 2

    }
    public static void main(String[] args) {
    tri((3l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l))));
    tri((4l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l, (long)3l))));
    tri((5l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l, (long)3l, (long)15l))));
    tri((6l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l, (long)3l, (long)15l, (long)4l))));
    tri((7l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l, (long)3l, (long)15l, (long)4l, (long)24l))));
    tri((8l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l, (long)3l, (long)15l, (long)4l, (long)24l, (long)5l))));
    tri((9l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l, (long)3l, (long)15l, (long)4l, (long)24l, (long)5l, (long)35l))));
    tri((20l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)8l, (long)3l, (long)15l, (long)4l, (long)24l, (long)5l, (long)35l, (long)6l, (long)48l, (long)7l, (long)63l, (long)8l, (long)80l, (long)9l, (long)99l, (long)10l, (long)120l, (long)11l))));
    tri((0l)).equals((new ArrayList<Long>(Arrays.asList((long)1l))));
    tri((1l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l))));
    }

}
