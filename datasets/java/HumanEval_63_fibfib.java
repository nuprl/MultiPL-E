import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    // fibfib(0) == 0
    // fibfib(1) == 0
    // fibfib(2) == 1
    // fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
    // Please write a function to efficiently compute the n-th element of the fibfib number sequence.
    // >>> fibfib(1)
    // 0
    // >>> fibfib(5)
    // 4
    // >>> fibfib(8)
    // 24
    public static long fibfib(long n) {
        if (n < 0) {
            throw new IllegalArgumentException("n must be non-negative");
        }
        if (n == 0) {
            return 0;
        }
        if (n == 1) {
            return 0;
        }
        if (n == 2) {
            return 1;
        }
        long[] fib = new long[n + 1];
        fib[0] = 0;
        fib[1] = 0;
        fib[2] = 1;
        for (int i = 3; i <= n; i++) {
            fib[i] = fib[i - 1] + fib[i - 2] + fib[i - 3];
        }
        return fib[n];
    }
    // You are given an array of strings. You need to print the strings in the order of their occurrence from top to bottom in the given array.
    // If two strings occur at the same height, then the string with the lexicographically smaller character should be printed first.
    // In the case of a tie, the string with the smaller index in the array should be printed first.
    // >>> Input: ["bcdef", "abcdefg", "bcde", "bcdef"]
    // >>> Output: "abcdefgbcdef"
    public static String printVertically(String[] input) {
        if (input == null || input.length == 0) {
            return "";
        }
        int maxLength = 0;
        for (String s : input) {
            maxLength = Math.max(maxLength, s.length());
        }
        String[] result = new String[maxLength];
        for (int i = 0; i < maxLength; i++) {
            result[i] = "";
        }
        for (String s : input) {
            for (int i = 0; i < s.length(); i++) {
                result[i] += s.charAt(i);
            }
        }
        StringBuilder sb = new StringBuilder();
        for (String s : result) {
            sb.append(s);
            sb.append(" ");
        }


    }
    public static void main(String[] args) {
    assert(fibfib((2l)) == (1l));
    assert(fibfib((1l)) == (0l));
    assert(fibfib((5l)) == (4l));
    assert(fibfib((8l)) == (24l));
    assert(fibfib((10l)) == (81l));
    assert(fibfib((12l)) == (274l));
    assert(fibfib((14l)) == (927l));
    }

}
